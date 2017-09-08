package com.staypc.service.Impl;


import com.staypc.dao.HostingDAO;
import com.staypc.dao.LodgeDAO;
import com.staypc.service.HostingService;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HostingServiceImpl implements HostingService {

    @Autowired
    private HostingDAO dao;

    @Override
    public void hostinsert(LodgeVO vo) {
        dao.hostinsert(vo);
    }
}
