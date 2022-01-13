package com.yc.controller;

import com.yc.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class CompanyController {

    @Autowired
    private CompanyService companyService;

    @RequestMapping("/insertcompany.yc")
    public String insertcompany(String companyname,String logoimg,String website,String city,String select_industry,String select_scale,String s_radio,String select_invest,String stageorg,String temptation, HttpSession session){
        String username = (String) session.getAttribute("username");
        boolean b = companyService.insertcompany(companyname, logoimg, website, city, select_industry, select_scale, s_radio, select_invest, stageorg, temptation, username);
        if(b){
            return "addcompanymess";
        }
        return "addcompanymess";
    }

    @RequestMapping("/selectcompany.yc")
    public ModelAndView selectcompany(HttpSession session) {
        ModelAndView model = new ModelAndView("selectcompanymess");
        String username = (String) session.getAttribute("username");
        Map company = companyService.selectcompany(username);
        model.addObject("company", company);
        return model;
    }

    @RequestMapping("/updatecompanymess.yc")
    public ModelAndView updatecompanymess(HttpSession session) {
        ModelAndView model = new ModelAndView("updatecompanymess");
        String username = (String) session.getAttribute("username");
        Map companymess = companyService.selectcompany(username);
        model.addObject("companymess", companymess);
        return model;
    }

    @RequestMapping("/updatecompany.yc")
    public String updatecompany(String companyname,String logoimg,String website,String city,String select_industry,String select_scale,String s_radio,String select_invest,String stageorg,String temptation, HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = companyService.updatecompany(companyname, logoimg, website, city, select_industry, select_scale, s_radio, select_invest, stageorg, temptation, username);
        if (b) {
            return "redirect:/selectcompany.yc";
        }
        return "addcompanymess";
    }

    @RequestMapping("/deletecompany.yc")
    public String deletecompany(HttpSession session) {
        String username = (String) session.getAttribute("username");
        boolean b = companyService.deletecompany(username);
        if (b) {
            return "redirect:/selectcompany.yc";
        }
        return "addcompanymess";
    }

    @RequestMapping("/selectcompanymess.yc")
    public ModelAndView selectCompanymessBycompany_id(@RequestParam("company_id") int company_id, HttpSession session) {
        ModelAndView model = new ModelAndView("companymess");
        Map companymess = companyService.selectCompanymessBycompany_id(company_id);
        List zw = companyService.selectzw(company_id);
        model.addObject("zw", zw);
        model.addObject("companymess", companymess);
        return model;
    }

    @RequestMapping("/selectCompanymessByCity.yc")
    public ModelAndView selectCompanymessByCity(@RequestParam("city") String city, HttpSession session) {
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("allcompany");
        List<Map> allcompany = companyService.selectCompanymessByCity(city);
        model.addObject("allcompany", allcompany);
        return model;
    }

    @RequestMapping("/selectCompanymessByCompanyName.yc")
    public ModelAndView selectCompanymessByName(String companyname, HttpSession session) {
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("allcompanyname");
        List<Map> allcompany = companyService.selectCompanymessByCompanyName(companyname);
        model.addObject("allcompany", allcompany);
        return model;
    }
}
