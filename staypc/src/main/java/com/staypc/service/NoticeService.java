package com.staypc.service;

import java.util.List;

import com.staypc.vo.NoticeVO;

public interface NoticeService {
	public List<NoticeVO> notice_list();
	public NoticeVO notice_view(NoticeVO vo);
	void notice_insert(NoticeVO vo);
	void notice_update(NoticeVO vo);
	void notice_delete(NoticeVO vo);
}
