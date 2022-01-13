package com.yc.service;

import com.yc.dao.CompanyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyDao companyDao;

    @Override
    public boolean insertcompany(String companyname, String logoimg, String website, String city, String select_industry, String select_scale, String s_radio, String select_invest, String stageorg, String temptation, String username) {
        int num = companyDao.insertcompany(companyname, logoimg, website, city, select_industry, select_scale, s_radio, select_invest, stageorg, temptation, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Transactional
    @Override
    public Map selectcompany(String username) {
        Map map = companyDao.selectcompany(username);
        return map;
    }

    @Override
    public boolean updatecompany(String companyname, String logoimg, String website, String city, String select_industry, String select_scale, String s_radio, String select_invest, String stageorg, String temptation, String username) {
        int num = companyDao.updatecompany(companyname, logoimg, website, city, select_industry, select_scale, s_radio, select_invest, stageorg, temptation, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean deletecompany(String username) {
        int num = companyDao.deletecompany(username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public List<Map> selectCompanymessByCity(String city) {
        List<Map> map = companyDao.selectCompanymessByCity(city);
        return map;
    }

    @Override
    public List<Map> selectCompanymessByCompanyName(String companyname) {
        List<Map> map = companyDao.selectCompanymessByCompanyName(companyname);
        return map;
    }

    @Override
    public Map selectCompanymessBycompany_id(int company_id) {
        Map map = companyDao.selectCompanymessBycompany_id(company_id);
        return map;
    }

    @Override
    public List<Map> selectzw(int company_id) {
        List list = companyDao.selectzw(company_id);
        return list;
    }

}
