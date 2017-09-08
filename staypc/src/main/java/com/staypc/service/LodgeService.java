package com.staypc.service;

import com.staypc.vo.LodgeVO;

import java.util.List;


public interface LodgeService {
	public List<LodgeVO> listMain() throws Exception;
	public int countArticle(String num, String keyword, String sdate, String edate) throws Exception;
	public List<LodgeVO> listAll(int start, int end, String num, String keyword, String sdate, String edate) throws Exception;
	public void insert(LodgeVO vo) throws Exception;
	//추가부분 시작
	public LodgeVO read(int lno) throws Exception;

}
 