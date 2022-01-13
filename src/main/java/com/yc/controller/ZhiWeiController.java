package com.yc.controller;

import com.yc.service.ZhiWeiService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class ZhiWeiController {

    @Autowired
    private ZhiWeiService zhiWeiService;


    @RequestMapping("/insertzhiwei.yc")
    public String insertzhiwei(String positionType, String positionName, String jobNature, String salaryMin, String salaryMax,
                               String workAddress, String workYear, String education, String positionAdvantage, String positionDetail,
                               String positionAddress, HttpSession session, HttpServletRequest request) {
        String username = (String) session.getAttribute("username");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String time = dateFormat.format(date);
        boolean b = zhiWeiService.insertzhiwei(positionType, positionName, jobNature, salaryMin, salaryMax, workAddress, workYear, education, positionAdvantage, positionDetail, positionAddress, time, username);
        if (b) {
            request.setAttribute("success", "true");
            return "createmess";
        }
        return "create";
    }

    @ResponseBody
    @RequestMapping("/selectzhiwei.yc")
    public ModelAndView selectzhiwei(HttpSession session) {
        ModelAndView model = new ModelAndView("positions");
        String username = (String) session.getAttribute("username");
        List<Map> zhiwei = zhiWeiService.selectzhiwei(username);
        model.addObject("zhiwei", zhiwei);
        return model;
    }

    @RequestMapping("/deletezhiwei.yc")
    public String deletezhiwei(@RequestParam("zhiwei_id")int zhiwei_id) {
        boolean b = zhiWeiService.deletezhiwei(zhiwei_id);
        if (b) {
            return "redirect:/selectzhiwei.yc";
        }
        return "create";
    }

    @RequestMapping("/zhiweimess.yc")
    public ModelAndView zhiweimess(@RequestParam("zhiwei_id")int zhiwei_id) {
        ModelAndView model = new ModelAndView("updatezhiwei");
        Map zwmess = zhiWeiService.selectzhiweiByID(zhiwei_id);
        model.addObject("zwmess", zwmess);
        return model;
    }

    @RequestMapping("/updatezhiwei.yc")
    public String updatezhiwei(String positionType, String positionName, String jobNature, String salaryMin, String salaryMax,
                               String workAddress, String workYear, String education, String positionAdvantage, String positionDetail,
                               String positionAddress,@RequestParam("zhiwei_id") int zhiwei_id) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String time = dateFormat.format(date);
        boolean b = zhiWeiService.updatezhiwei(positionType, positionName, jobNature, salaryMin, salaryMax, workAddress, workYear, education, positionAdvantage, positionDetail, positionAddress, time, zhiwei_id);
        if (b) {
            return "redirect:/selectzhiwei.yc";
        }
        return "create";
    }

    @ResponseBody
    @RequestMapping("/selectByPositionName.yc")
    public void selectByPositionName(String positionName, HttpServletResponse response) throws IOException {
        List<Map> list = zhiWeiService.selectByPositionName(positionName);
        JSONArray jsonArray = new JSONArray();
        jsonArray.add(list);
        response.setHeader("Content-Type", "text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(jsonArray.toString());
        out.close();
    }

    @RequestMapping("/zhiwei.yc")
    public ModelAndView zhiwei(@RequestParam("zhiwei_id") int zhiwei_id) {
        ModelAndView model = new ModelAndView("zhiwei");
        Map zhiwei = zhiWeiService.zhiwei(zhiwei_id);
        model.addObject("zhiwei", zhiwei);
        return model;
    }

    @RequestMapping("/queryByPositionName.yc")
    public ModelAndView queryByPositionName(@RequestParam("positionName") String positionName, HttpSession session) {
        ModelAndView model = new ModelAndView("indexmess");
        List<Map> query = zhiWeiService.selectByPositionName(positionName);
        model.addObject("query", query);
        return model;
    }

}
