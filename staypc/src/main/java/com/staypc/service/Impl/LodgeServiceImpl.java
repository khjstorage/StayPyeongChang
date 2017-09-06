package com.staypc.service.Impl;

import com.staypc.dao.LodgeDAO;
import com.staypc.service.LodgeService;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;


@Service
public class LodgeServiceImpl implements LodgeService{

@Autowired	
private LodgeDAO dao;	
	
	
public void insert(LodgeVO vo) {
    dao.insert(vo);
}
	
	
	
	
	
	
	
}
