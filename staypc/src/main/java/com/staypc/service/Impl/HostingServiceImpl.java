package com.staypc.service.Impl;


import com.staypc.dao.HostingDAO;
import com.staypc.dao.LodgeDAO;
import com.staypc.service.HostingService;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class HostingServiceImpl implements HostingService {

    @Autowired
    private HostingDAO dao;

    @Override
    public void hostinsert(LodgeVO vo) {
        dao.hosting(vo);

        String[] files = vo.getFiles();
        if(files==null){
            return;
        }
        for(String fileName : files){
            dao.hosting_image(fileName);
        }
        
        try{
        	System.out.println("시작일/마지막일"+vo.getCheck_In()+"/"+vo.getCheck_Out());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            GregorianCalendar cal = new GregorianCalendar();
            Date startDate = sdf.parse(vo.getCheck_In());
            Date endDate = sdf.parse(vo.getCheck_Out());
            //두날짜 사이의 시간 차이(ms)를 하루 동안의 ms(24시*60분*60초*1000밀리초) 로 나눈다.
            long diffDay = (endDate.getTime() - startDate.getTime()) / (24*60*60*1000);
            for(int i= 0; i <diffDay; i++) {
            	cal.setTime(startDate);            
            	cal.add(cal.DAY_OF_YEAR, i);
            	vo.setBook_date(sdf.format(cal.getTime()));
            	dao.hosting_date(vo);
            }
        }catch(ParseException e){
            e.printStackTrace();
        }
    }

    @Override
    public List<LodgeVO> listhost(String id) {
        return dao.listhost(id);
    }

    @Override
    public List detail_host(String lodge_code) {
        return dao.detail_host(lodge_code);
    }

}
