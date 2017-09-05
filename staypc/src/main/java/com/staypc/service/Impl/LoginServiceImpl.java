package com.staypc.service.Impl;

import com.staypc.dao.LoginDAO;
import com.staypc.service.LoginService;
import com.staypc.vo.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginDAO dao;

    public void insert(LoginVO vo) {
        dao.insert(vo);
    }

    public void mailAuth(LoginVO vo) {
        dao.mailAuth(vo);
    }

    public LoginVO findUser(String email) {
        return dao.findUser(email);
    }


    public boolean loginCheck(LoginVO vo, HttpSession session) {
        boolean result = dao.loginCheck(vo);

        if(result) {
            LoginVO vo2 = viewMember(vo);
            session.setAttribute("userId", vo2.getId());
            session.setAttribute("userEmail", vo2.getEmail());
        }
        return result;
    }

    public LoginVO viewMember(LoginVO vo) {
        return dao.viewMember(vo);
    }

    public void logout(HttpSession session) {
        session.removeAttribute("userId");
        session.removeAttribute("userEmail");
        session.invalidate();
    }

    public String duplicate_id(String id) {
        return dao.duplicate_id(id);
    }

    public String duplicate_email(String email) {
        return dao.duplicate_email(email);
    }

    public LoginVO getMember(String userId) {
        return dao.getMember(userId);
    }

    public void changePassword(LoginVO vo) {
        dao.changePassword(vo);
    }

    public void modify(LoginVO vo) {
        dao.modify(vo);
    }
}
