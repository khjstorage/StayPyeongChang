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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

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
       
    	vo.setId((String)session.getAttribute("userId"));
        
        if(vo.getFiles()!=null){
            vo.setMain_Image(vo.getFiles()[0]);
        }else{
            vo.setMain_Image("");
        }
        service.hostinsert(vo);
        return "redirect:/";
        
    }


    @RequestMapping(value = "host/list.do", method = RequestMethod.GET)
    public ModelAndView hostListForm(ModelAndView mav, HttpSession session){
        String id = (String) session.getAttribute("userId");
        System.out.println("session"+id);
        List<LodgeVO> list =service.listhost(id);
        mav.setViewName("host/list");
        mav.addObject("list",list);
        return mav;
    }

    @RequestMapping(value = "host/detail.do" ,method = RequestMethod.GET)
    public ModelAndView hostDetail(ModelAndView mav, @RequestParam String lodge_code){
        System.out.println(lodge_code);
        List list = service.detail_host(lodge_code);
        System.out.println(list);
        mav.addObject("list",list);
        mav.setViewName("host/detail");
        return mav;
    }


    @ResponseBody
    @RequestMapping(value = "host/uploadAjax.do", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
    public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
        System.out.println("uploadAjax"+file);
        ResponseEntity responseEntity = new ResponseEntity(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
        return responseEntity;
    }

    //섬네일 보여준다.
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
            System.out.println(uploadPath+fileName);
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
