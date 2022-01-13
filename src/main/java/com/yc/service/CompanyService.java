package com.yc.service;


import java.util.List;
import java.util.Map;

public interface CompanyService {
    public boolean insertcompany(String companyname,String logoimg,String website,String city,String select_industry,
                                 String select_scale,String s_radio,String select_invest,String stageorg,String temptation,String username);

    public Map selectcompany(String username);

    public boolean updatecompany(String companyname,String logoimg,String website,String city,String select_industry,String select_scale,String s_radio,String select_invest,String stageorg,String temptation,String username);

    public boolean deletecompany(String username);

    public List<Map> selectCompanymessByCity(String city);

    public List<Map> selectCompanymessByCompanyName(String companyname);

    public Map selectCompanymessBycompany_id(int company_id);

    public List<Map> selectzw(int company_id);

}
