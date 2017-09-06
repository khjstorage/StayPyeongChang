package com.staypc.dao;


import com.staypc.vo.LoginVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LoginDAO {

    @Autowired
    private SqlSessionTemplate mybatis;

    public void insert(LoginVO vo){
        mybatis.insert("member.insert", vo);
    }


    public void mailAuth(LoginVO vo) {
        mybatis.update("member.mailAuth", vo);
    }

    public LoginVO findUser(String email) {
        return mybatis.selectOne("member.findUser", email);
    }


    public boolean loginCheck(LoginVO vo) {
        String email = mybatis.selectOne("member.loginCheck", vo);
        return (email==null) ? false : true;
    }

    public LoginVO viewMember(LoginVO vo) {
        return mybatis.selectOne("member.viewMember", vo);
    }


    public String duplicate_id(String id) {
        return mybatis.selectOne("member.duplicate_id", id);
    }


    public String duplicate_email(String email)  {
        return mybatis.selectOne("member.duplicate_email", email);
    }

    public void changePassword(LoginVO vo) {
        System.out.println(vo.getPassword());
        System.out.println(vo.getEmail());
        mybatis.update("member.changePassword",vo);
    }

    public LoginVO getMember(String userId) {
        return mybatis.selectOne("member.getMember", userId);
    }

    public void modify(LoginVO vo) {
        mybatis.update("member.modify", vo);
    }

    public void drop(LoginVO vo) {
        mybatis.delete("member.drop",vo);
    }
}
