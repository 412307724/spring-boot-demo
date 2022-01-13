package com.yc.controller;

import com.yc.service.LoginService;
import com.yc.util.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;

    @RequestMapping("/login.yc")
    public String login(String username, String password, HttpSession session, HttpServletRequest request) {
        String type_id = loginService.selectTypeId(username);
        boolean b = loginService.login(username, password);
        if (b) {
            session.setAttribute("username", username);
            session.setAttribute("type_id", type_id);
            request.setAttribute("loginmess", "true");
            return "loginmess";
        }
        return "loginmess";
    }

    @RequestMapping("/register.yc")
    public String register(String username, String password,String insurepassword, String type_id, HttpServletRequest request) {
        boolean isregister = loginService.isRegister(username, password,insurepassword, type_id);
        if (isregister) {
            request.setAttribute("success", "true");
            return "registermess";
        }
        return "register";
    }

    @RequestMapping("/updatePassword.yc")
    public String updatePassword(String newpassword,String insurepassword, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = (String) session.getAttribute("username");
        boolean updatePassword = loginService.updatePassword(username, newpassword,insurepassword);
        if (updatePassword) {
            request.setAttribute("status", "true");
            return "updatePwdmess";
        }
        return "updatePwd";
    }
}
