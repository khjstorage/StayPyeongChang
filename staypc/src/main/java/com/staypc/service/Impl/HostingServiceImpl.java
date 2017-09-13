package com.staypc.service.Impl;


import com.staypc.dao.HostingDAO;
import com.staypc.dao.LodgeDAO;
import com.staypc.service.HostingService;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;

@Service
public class HostingServiceImpl implements HostingService {

    @Autowired
    private HostingDAO dao;

    @Override
    public void hostinsert(LodgeVO vo) {
        dao.hosting(vo);

//        String[] files = vo.getFiles();
//        if(files==null){
//            return;
//        }
//        for(String fileName : files){
//            dao.hosting_image(fileName);
//        }
        
        try{
        	System.out.println("3번말"+vo.getCheck_In()+"/"+vo.getCheck_Out());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            GregorianCalendar cal = new GregorianCalendar();

            Date startDate = sdf.parse(vo.getCheck_In());
            Date endDate = sdf.parse(vo.getCheck_Out());
            
            
            //두날짜 사이의 시간 차이(ms)를 하루 동안의 ms(24시*60분*60초*1000밀리초) 로 나눈다.
            long diffDay = (endDate.getTime() - startDate.getTime()) / (24*60*60*1000);
            System.out.println("두 날짜간의 차이는 "+diffDay+"일");
            
            for(int i= 0; i <diffDay; i++) {
            	System.out.println("4-"+i+"번말");
            	cal.setTime(startDate);            
            	cal.add(cal.DAY_OF_YEAR, i);
            	
            	vo.setBook_date(sdf.format(cal.getTime()));
            	System.out.println("값이 안찍히나 원..?"+vo.getBook_date());
            	
            	dao.hosting_date(vo);
            	System.out.println("ㅅㅂ");
            }
            
        }catch(ParseException e){
            e.printStackTrace();
        }
        

    }

}
