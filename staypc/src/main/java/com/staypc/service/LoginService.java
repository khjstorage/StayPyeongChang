package com.staypc.service;

import com.staypc.vo.LoginVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface LoginService {
    void insert(LoginVO vo);
    void mailAuth(LoginVO vo);
    LoginVO findUser(String email);
    boolean loginCheck(LoginVO vo, HttpSession session);
    LoginVO viewMember(LoginVO vo);
    void logout(HttpSession session);
    String duplicate_id(String id);
    void changePassword(LoginVO vo);
    String duplicate_email(String email);
    LoginVO getMember(String userId);
    void modify(LoginVO vo);
    void drop(LoginVO vo);
}
