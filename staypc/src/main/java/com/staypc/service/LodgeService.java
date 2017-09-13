package com.staypc.service;

import com.staypc.vo.LodgeVO;

import java.util.List;

import com.staypc.vo.LodgeVO;


public interface LodgeService {
	public List<LodgeVO> listMain() throws Exception;
	public int countArticle(String num, String keyword, String sdate, String edate) throws Exception;
	public List<LodgeVO> listAll(int start, int end, String num, String keyword, String sdate, String edate) throws Exception;
	public void insert(LodgeVO vo) throws Exception;
	//추가부분 시작
	public LodgeVO read(int  lodge_Code) throws Exception;
	public List<LodgeVO> readimg(int lodge_Code ) throws Exception;
	//추가부분 끝

}
 