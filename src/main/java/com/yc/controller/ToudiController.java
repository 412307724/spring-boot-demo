package com.yc.controller;

import com.yc.service.ToudiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class ToudiController {
    @Autowired
    private ToudiService toudiService;

    @RequestMapping("/toudijl.yc")
    public String toudijl(HttpSession session, int zhiwei_id, int company_id, HttpServletRequest request){
        String username = (String) session.getAttribute("username");
        int jianli_id = toudiService.selectJianli_id(username);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String touditime = dateFormat.format(date);
        boolean successtoudi = toudiService.toudijl(jianli_id,zhiwei_id,company_id,touditime);
        if(successtoudi){
            request.setAttribute("successtoudi", "true");
            return "toudimess";
        }
        return "zhiwei";
    }

    @RequestMapping("/delivery.yc")
    public ModelAndView delivery(HttpSession session){
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("delivery");
        List toudimess = toudiService.selectToudi(username);
        model.addObject("toudimess",toudimess);
        return model;
    }

    @RequestMapping("/interview.yc")
    public ModelAndView interview(HttpSession session){
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("interview");
        List toudimess = toudiService.interview(username);
        model.addObject("toudimess",toudimess);
        return model;
    }

    @RequestMapping("/notsuitable.yc")
    public ModelAndView notsuitable(HttpSession session){
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("notsuitable");
        List toudimess = toudiService.notsuitable(username);
        model.addObject("toudimess",toudimess);
        return model;
    }

    @RequestMapping("/querymess.yc")
    public ModelAndView querymess(HttpSession session){
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("canInterviewResumes");
        List querymess = toudiService.querymess(username);
        model.addObject("querymess",querymess);
        return model;
    }

    @RequestMapping("/jlbuheshi.yc")
    public ModelAndView jlbuheshi(HttpSession session){
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("jlbuheshi");
        List querymess = toudiService.jlbuheshi(username);
        model.addObject("querymess",querymess);
        return model;
    }

    @RequestMapping("/tongzhimianshi.yc")
    public ModelAndView tongzhimianshi(HttpSession session){
        String username = (String) session.getAttribute("username");
        ModelAndView model = new ModelAndView("tongzhims");
        List querymess = toudiService.tongzhimianshi(username);
        model.addObject("querymess",querymess);
        return model;
    }

    @RequestMapping("/queryjianlimess.yc")
    public ModelAndView queryjianlimess(@RequestParam("jianli_id")int jianli_id){
        ModelAndView model = new ModelAndView("queryjianlimess");
        Map querymessage = toudiService.querymessage(jianli_id);
        model.addObject("querymessage",querymessage);
        return model;
    }

    @RequestMapping("/jlnosuitable.yc")
    public String jlnosuitable(@RequestParam("toudi_id")int toudi_id,HttpServletRequest request){
        boolean updatenosuitable = toudiService.jlnosuitable(toudi_id);
        if(updatenosuitable){
            request.setAttribute("updatenosuitable", "true");
            return "jlnosuitablemess";
        }
        return "jlbuheshi";
    }

    @RequestMapping("/tongzhims.yc")
    public String tongzhims(@RequestParam("toudi_id")int toudi_id,HttpServletRequest request){
        boolean updatetongzhims = toudiService.tongzhims(toudi_id);
        if(updatetongzhims){
            request.setAttribute("updatetongzhims", "true");
            return "tongzhimsmess";
        }
        return "tongzhims";
    }
}
