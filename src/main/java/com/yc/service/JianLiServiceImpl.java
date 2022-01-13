package com.yc.service;

import com.yc.dao.JianLiDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class JianLiServiceImpl implements JianLiService {
    @Autowired
    private JianLiDao jianLiDao;

    @Override
    public boolean insertjbxx(String name, String gender, String topDegree, String workyear,
                              String tel, String email, String currentState, String username) {
        int num = jianLiDao.insertjbxx(name, gender, topDegree, workyear, tel, email, currentState, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updatejbxx(String name, String gender, String topDegree, String workyear, String tel, String email, String currentState, String username) {
        int num = jianLiDao.updatejbxx(name, gender, topDegree, workyear, tel, email, currentState, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updateqwgz(String expectCity, String type, String expectPosition, String expectSalary, String username) {
        int num = jianLiDao.updateqwgz(expectCity, type, expectPosition, expectSalary, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public Map selectjbxx(String username) {
        Map map = jianLiDao.selectjbxx(username);
        return map;
    }

    @Override
    public boolean renamejianli(String resumeName, String username) {
        int num = jianLiDao.renamejianli(resumeName, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updategzjl(String companyName, String positionName, String companyYearStart, String companyMonthStart, String companyYearEnd, String companyMonthEnd, String username) {
        int num = jianLiDao.updategzjl(companyName, positionName, companyYearStart, companyMonthStart, companyYearEnd, companyMonthEnd, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updatexmjy(String projectName, String thePost, String projectYearStart, String projectMonthStart, String projectYearEnd, String projectMonthEnd, String projectDescription, String username) {
        int num = jianLiDao.updatexmjy(projectName, thePost, projectYearStart, projectMonthStart, projectYearEnd, projectMonthEnd, projectDescription, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updatejybj(String schoolName, String degree, String professionalName, String schoolYearStart, String schoolYearEnd, String username) {
        int num = jianLiDao.updatejybj(schoolName, degree, professionalName, schoolYearStart, schoolYearEnd, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updatezwms(String selfDescription, String username) {
        int num = jianLiDao.updatezwms(selfDescription, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean deletejianli(String username) {
        int num = jianLiDao.deletejianli(username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean insertjianli(String username) {
        int num = jianLiDao.insertjianli(username);
        if (num > 0)
            return true;
        else
            return false;
    }
}
