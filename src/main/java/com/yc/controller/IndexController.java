package com.yc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/authSuccess.html")
    public String authSuccess(){
        return "authSuccess";
    }

    @RequestMapping("/autoFilterResumes.html")
    public String autoFilterResumes(){
        return "autoFilterResumes";
    }

    @RequestMapping("/canInterviewResumes.html")
    public String canInterviewResumes(){
        return "canInterviewResumes";
    }

    @RequestMapping("/collections.html")
    public String collections(){
        return "collections";
    }

    @RequestMapping("/create.html")
    public String create(){
        return "create";
    }

    @RequestMapping("/delivery.html")
    public String delivery(){
        return "delivery";
    }

    @RequestMapping("/founder.html")
    public String founder(){
        return "founder";
    }

    @RequestMapping("/index.html")
    public String index(){
        return "index";
    }

    @RequestMapping("/Index.html")
    public String Index(){
        return "inde x";
    }

    @RequestMapping("/addcompanymess.html")
    public String index01(){
        return "addcompanymess";
    }

    @RequestMapping("/jianli.html")
    public String jianli(){
        return "jianli";
    }

    @RequestMapping("/lenovo.html")
    public String lenovo(){
        return "lenovo";
    }

    @RequestMapping("/list.html")
    public String list(){
        return "list";
    }

    @RequestMapping("/login.html")
    public String login(){
        return "login";
    }

    @RequestMapping("/myhome.html")
    public String myhome(){
        return "myhome";
    }

    @RequestMapping("/positions.html")
    public String positions(){
        return "positions";
    }

    @RequestMapping("/preview.html")
    public String preview(){
        return "preview";
    }

    @RequestMapping("/register.html")
    public String register(){
        return "register";
    }

    @RequestMapping("/reset.html")
    public String reset(){
        return "reset";
    }

    @RequestMapping("/toudi.html")
    public String toudi(){
        return "toudi";
    }

    @RequestMapping("/updatePwd.html")
    public String updatePwd(){
        return "updatePwd";
    }

    @RequestMapping("/updatezhiwei.html")
    public String updatezhiwei(){
        return "updatezhiwei";
    }

    @RequestMapping("/updatecompanymess.html")
    public String updatecompanymess(){
        return "updatecompanymess";
    }

    @RequestMapping("/youku.html")
    public String youku(){
        return "youku";
    }
}
