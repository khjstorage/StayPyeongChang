package com.staypc.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staypc.dao.AdminDAO;
import com.staypc.service.AdminService;
import com.staypc.vo.LodgeVO;
import com.staypc.vo.MemberVO;
import com.staypc.vo.PaymentVO;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDAO adminDao;

	@Override
	public List<MemberVO> member_list(MemberVO vo) {
		return adminDao.member_list(vo);
	}

	@Override
	public MemberVO member_view(MemberVO vo) {
		return adminDao.member_view(vo);
	}
	
	@Override
	public int member_cnt() {
		return adminDao.member_cnt();
	}

	@Override
	public List<LodgeVO> lodge_list(LodgeVO vo) {
		return adminDao.lodge_list(vo);
	}

	@Override
	public LodgeVO lodge_view(LodgeVO vo) {
		return adminDao.lodge_view(vo);
	}

	@Override
	public void lodge_delete(LodgeVO vo) {
		adminDao.lodge_delete(vo);
	}
	
	@Override
	public int lodge_cnt() {
		return adminDao.lodge_cnt();
	}

	@Override
	public List<PaymentVO> payment_list(PaymentVO vo) {
		return adminDao.payment_list(vo);
	}

	@Override
	public List<PaymentVO> payment_total_list() {
		return adminDao.payment_total_list();
	}

	@Override
	public PaymentVO payment_view(PaymentVO vo) {
		return adminDao.payment_view(vo);
	}
	
	@Override
	public int payment_cnt() {
		return adminDao.payment_cnt();
	}

}
