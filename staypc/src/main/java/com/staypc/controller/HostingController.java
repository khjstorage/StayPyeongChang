package com.staypc.controller;

import com.staypc.service.HostingService;
import com.staypc.utility.MediaUtils;
import com.staypc.utility.UploadFileUtils;
import com.staypc.vo.LodgeVO;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class HostingController {

    @Autowired
    private HostingService service;

    @Autowired
    private String uploadPath;

    @RequestMapping("host/write.do")
    public String hostForm(HttpSession session){
        return "host/write";
    }

    @RequestMapping(value="host/insert.do", method= RequestMethod.POST)
    public String hosting(LodgeVO vo, HttpSession session) throws Exception{
//        vo.setId((String)session.getAttribute("userId"));
        // '09/08/2017' / '09/10/2017'
//        System.out.println("시작날짜와 끝날짜"+vo.getCheck_In() + "/"+ vo.getCheck_Out());
//
//        String strFormat = "MM/dd/yyyy";    //strStartDate 와 strEndDate 의 format
//
//        //SimpleDateFormat 을 이용하여 startDate와 endDate의 Date 객체를 생성한다.
//        SimpleDateFormat sdf = new SimpleDateFormat(strFormat);
//        try{
//            Date startDate = sdf.parse(vo.getCheck_In());
//            Date endDate = sdf.parse(vo.getCheck_Out());
//
//            //두날짜 사이의 시간 차이(ms)를 하루 동안의 ms(24시*60분*60초*1000밀리초) 로 나눈다.
//            long diffDay = (endDate.getTime() - startDate.getTime()) / (24*60*60*1000);
//            System.out.println("두 날짜간의 차이는 "+diffDay+"일");
//        }catch(ParseException e){
//            e.printStackTrace();
//        }

        service.hostinsert(vo);
        return "redirect:/";
    }



    @ResponseBody
    @RequestMapping(value = "host/uploadAjax.do", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
    public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
        ResponseEntity responseEntity = new ResponseEntity(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
        return responseEntity;
    }

    @ResponseBody
    @RequestMapping("host/displayFile.do")
    public ResponseEntity<byte[]>  displayFile(String fileName)throws Exception{
        InputStream in = null;
        ResponseEntity<byte[]> entity = null;
        try{
            String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
            MediaType mType = MediaUtils.getMediaType(formatName);
            HttpHeaders headers = new HttpHeaders();
            in = new FileInputStream(uploadPath+fileName);
            if(mType != null){
                headers.setContentType(mType);
            }else{
                fileName = fileName.substring(fileName.indexOf("_")+1);
                headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
                headers.add("Content-Disposition", "attachment; filename=\""+
                        new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
            }
            entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
        }catch(Exception e){
            e.printStackTrace();
            entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
        }finally{
            in.close();
        }
        return entity;
    }

    @ResponseBody
    @RequestMapping(value="host/deleteFile.do", method=RequestMethod.POST)
    public ResponseEntity<String> deleteFile(String fileName){
        String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
        MediaType mType = MediaUtils.getMediaType(formatName);

        if(mType != null){
            String front = fileName.substring(0,12);
            String end = fileName.substring(14);
            new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
        }
        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }







}
