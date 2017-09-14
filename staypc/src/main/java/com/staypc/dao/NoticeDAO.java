package com.staypc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.staypc.vo.NoticeVO;

@Repository
public class NoticeDAO {
	
	@Autowired
	public SqlSessionTemplate mybatis;
	
	public List<NoticeVO> notice_list(){
		return mybatis.selectList("notice_list");
	};
	public NoticeVO notice_view(NoticeVO vo) {
		return mybatis.selectOne("notice_view", vo);
	};
	public void notice_insert(NoticeVO vo) {
		mybatis.insert("notice_insert",vo);
	};
	public void notice_update(NoticeVO vo) {
		mybatis.update("notice_update", vo);
	};
	public void notice_delete(NoticeVO vo) {
		mybatis.delete("notice_delete", vo);
	};
}
