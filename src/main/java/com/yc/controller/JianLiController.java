package com.yc.controller;

import com.yc.service.JianLiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class JianLiController {
    @Autowired
    private JianLiService jianLiService;

    @RequestMapping("/selectjbxx.yc")
    public ModelAndView selectjbxx(HttpSession session, HttpServletRequest request) {
        ModelAndView model = new ModelAndView("jianli");
        String username = (String) session.getAttribute("username");
        Map map = jianLiService.selectjbxx(username);
        model.addObject("map", map);
        return model;
    }

    @RequestMapping("/renamejianli.yc")
    public String renamejianli(String resumeName,HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.renamejianli(resumeName,username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/updatejbxx.yc")
    public String updatejbxx(String name, String gender, String topDegree, String workyear, String tel,
                             String email, String currentState, HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.updatejbxx(name, gender, topDegree, workyear, tel, email, currentState, username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/updateqwgz.yc")
    public String updateqwgz(String expectCity, String type, String expectPosition, String expectSalary, HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.updateqwgz(expectCity, type, expectPosition, expectSalary,username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/updategzjl.yc")
    public String updategzjl(String companyName,String positionName,String companyYearStart,String companyMonthStart,String companyYearEnd,String companyMonthEnd,HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.updategzjl(companyName, positionName, companyYearStart, companyMonthStart,companyYearEnd,companyMonthEnd,username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/updatexmjy.yc")
    public String updategxmjy(String projectName,String thePost,String projectYearStart,String projectMonthStart,String projectYearEnd,String projectMonthEnd,String projectDescription,HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.updatexmjy(projectName,thePost,projectYearStart,projectMonthStart,projectYearEnd,projectMonthEnd,projectDescription,username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/updatejybj.yc")
    public String updatejybj(String schoolName,String degree,String professionalName,String schoolYearStart,String schoolYearEnd,HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.updatejybj(schoolName,degree,professionalName,schoolYearStart,schoolYearEnd,username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/updatezwms.yc")
    public String updatezwms(String selfDescription,HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.updatezwms(selfDescription,username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/deletejianli.yc")
    public String deletejianli(HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.deletejianli(username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }

    @RequestMapping("/insertjianli.yc")
    public String insertjianli(HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = jianLiService.insertjianli(username);
        if (b) {
            return "redirect:/selectjbxx.yc";
        }
        return "jianli";
    }


}
