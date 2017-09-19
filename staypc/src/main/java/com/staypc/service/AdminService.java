package com.staypc.service;

import java.util.List;

import com.staypc.vo.LodgeVO;
import com.staypc.vo.MemberVO;
import com.staypc.vo.PaymentVO;

public interface AdminService {
	//회원정보
	List<MemberVO> member_list(MemberVO vo);
	MemberVO member_view(MemberVO vo);
	int member_cnt();
	//호스팅
	List<LodgeVO> lodge_list(LodgeVO vo);
	LodgeVO lodge_view(LodgeVO vo);
	void lodge_delete(LodgeVO vo);
	int lodge_cnt();
	//결제
	List<PaymentVO> payment_list(PaymentVO vo);
	List<PaymentVO> payment_total_list();
	PaymentVO payment_view(PaymentVO vo);
	int payment_cnt();
}
