package org.pan.simple.controller;

import org.pan.simple.util.ValidateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by panmingzhi815 on 2014/9/20.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/adminLoginPage")
    public String adminLoginPage(HttpServletRequest request){
        String kaptcha = request.getParameter("kaptcha");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(!ValidateUtil.isNotNullOrEmpty(kaptcha) && !ValidateUtil.isNotNullOrEmpty(username) && !ValidateUtil.isNotNullOrEmpty(password) ){
            return "adminLoginPage";
        }

        request.setAttribute("username",username);
        request.setAttribute("password",password);

        String kaptchaExpected = (String)request.getSession() .getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        if (kaptcha == null || !kaptcha.equalsIgnoreCase(kaptchaExpected)){
            request.setAttribute("error","验证码错误");
            return "adminLoginPage";
        }

        if(username.equals("pan") && password.equals("123456")){
            request.removeAttribute("username");
            request.removeAttribute("password");
            request.removeAttribute("error");
            return "redirect:adminManagePage.do";
        }

        request.setAttribute("error","验证失败，请仔细检查用户名与密码");
        return "adminLoginPage";
    }

    @RequestMapping("/adminManagePage")
    public String adminManagePage(){
        return "adminManagePage";
    }
}
