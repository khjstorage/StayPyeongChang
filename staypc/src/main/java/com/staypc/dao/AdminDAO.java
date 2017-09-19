package com.staypc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.staypc.vo.LodgeVO;
import com.staypc.vo.MemberVO;
import com.staypc.vo.PaymentVO;

@Repository
public class AdminDAO {

	
	@Autowired
	SqlSessionTemplate session;
	
	
	//회원정보
	public List<MemberVO>member_list(MemberVO vo){
		return session.selectList("member_list",vo);
	}
	
	public MemberVO member_view(MemberVO vo) {
		return session.selectOne("member_view",vo);
	}
	
	public int member_cnt() {
		return session.selectOne("member_cnt");
	}
	
	
	
	//호스팅
	public List<LodgeVO>lodge_list(LodgeVO vo){
		return session.selectList("lodge_list",vo);
	}
	
	public LodgeVO lodge_view(LodgeVO vo) {
		return session.selectOne("lodge_view",vo);
	}
	
	public void lodge_delete(LodgeVO vo) {
		session.delete("lodge_delete",vo);
	}
	
	public int lodge_cnt() {
		return session.selectOne("lodge_cnt");
	}
	
	
	//결제
	public List<PaymentVO> payment_list(PaymentVO vo){
		return session.selectList("payment_list",vo);
	}
	
	public List<PaymentVO>payment_total_list(){
		return session.selectList("payment_total_list");
	}
	
	public PaymentVO payment_view(PaymentVO vo) {
		return session.selectOne("payment_view",vo);
	}
	
	public int payment_cnt() {
		return session.selectOne("payment_cnt");
	}
}
