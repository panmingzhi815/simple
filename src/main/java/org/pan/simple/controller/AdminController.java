package org.pan.simple.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by panmingzhi815 on 2014/9/20.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/adminLoginPage")
    public String adminLoginPage(){
        return "adminLoginPage";
    }

    @RequestMapping("/adminLogin")
    public String adminLogin(HttpServletRequest request,Model model){
        String kaptchaExpected = (String)request.getSession() .getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        String kaptchaReceived = request.getParameter("kaptcha");
        if (kaptchaReceived == null || !kaptchaReceived.equalsIgnoreCase(kaptchaExpected)){
            model.addAttribute("error","验证码错误");
            return "adminLoginPage";
        }
        return "adminLoginPage";
    }

}
