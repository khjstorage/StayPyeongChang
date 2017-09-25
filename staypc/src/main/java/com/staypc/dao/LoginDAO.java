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
        mybatis.insert("login.insert", vo);
    }


    public void mailAuth(LoginVO vo) {
        mybatis.update("login.mailAuth", vo);
    }

    public LoginVO findUser(String email) {
        return mybatis.selectOne("login.findUser", email);
    }


    public boolean loginCheck(LoginVO vo) {
        String email = mybatis.selectOne("login.loginCheck", vo);
        return (email==null) ? false : true;
    }

    public LoginVO viewMember(LoginVO vo) {
        return mybatis.selectOne("login.viewMember", vo);
    }


    public String duplicate_id(String id) {
        return mybatis.selectOne("login.duplicate_id", id);
    }


    public String duplicate_email(String email)  {
        return mybatis.selectOne("login.duplicate_email", email);
    }

    public void changePassword(LoginVO vo) {
        System.out.println(vo.getPassword());
        System.out.println(vo.getEmail());
        mybatis.update("login.changePassword",vo);
    }

    public LoginVO getMember(String userId) {
        return mybatis.selectOne("login.getMember", userId);
    }

    public void modify(LoginVO vo) {
        mybatis.update("login.modify", vo);
    }

    //회원정보 삭제
    public void drop(LoginVO vo) {
        mybatis.delete("login.drop",vo);
    }

    //호스팅 글삭제
    public void lodgeDrop(LoginVO vo) {
        mybatis.delete("login.lodgeDrop",vo);
    }

    public List<Integer> getHostingList(LoginVO vo) {
        return mybatis.selectList("login.getHostingList", vo);
    }

    public void dropHosting(int lodge_code) {
        mybatis.delete("login.dropHosting",lodge_code);
    }

    public void dropHostingImage(int lodge_code) {
        mybatis.delete("login.dropHostingImage",lodge_code);
    }

    public void dropHostingBook(int lodge_code) {
        mybatis.delete("login.dropHostingBook",lodge_code);
    }
}
