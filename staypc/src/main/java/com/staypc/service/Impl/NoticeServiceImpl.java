package com.staypc.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staypc.dao.NoticeDAO;
import com.staypc.service.NoticeService;
import com.staypc.vo.NoticeVO;
@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDAO noticeDao;
	@Override
	public List<NoticeVO> notice_list(NoticeVO vo) {
		// TODO Auto-generated method stub
		return noticeDao.notice_list(vo);
	}

	@Override
	public NoticeVO notice_view(NoticeVO vo) {
		// TODO Auto-generated method stub
		return noticeDao.notice_view(vo);
	}

	@Override
	public void notice_insert(NoticeVO vo) {
		// TODO Auto-generated method stub
		noticeDao.notice_insert(vo);
	}

	@Override
	public void notice_update(NoticeVO vo) {
		// TODO Auto-generated method stub
		noticeDao.notice_update(vo);
	}

	@Override
	public void notice_delete(NoticeVO vo) {
		// TODO Auto-generated method stub
		noticeDao.notice_delete(vo);
	}

	@Override
	public int notice_cnt() {
		// TODO Auto-generated method stub
		return noticeDao.notice_cnt();
	}

	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		return noticeDao.getNotice(vo);
	}

}
