package com.yc.service;

import java.util.Map;

public interface JianLiService {
    public boolean insertjbxx(String name, String gender, String topDegree, String workyear,
                              String tel, String email, String currentState, String username);

    public boolean updatejbxx(String name, String gender, String topDegree, String workyear,
                              String tel, String email, String currentState, String username);

    public boolean updateqwgz(String expectCity, String type, String expectPosition, String expectSalary, String username);

    public Map selectjbxx(String username);

    public boolean renamejianli(String resumeName, String username);

    public boolean updategzjl(String companyName,String positionName,String companyYearStart,String companyMonthStart,String companyYearEnd,String companyMonthEnd,String username);

    public boolean updatexmjy(String projectName,String thePost,String projectYearStart,String projectMonthStart,String projectYearEnd,String projectMonthEnd,String projectDescription,String username);

    public boolean updatejybj(String schoolName,String degree,String professionalName,String schoolYearStart,String schoolYearEnd,String username);

    public boolean updatezwms(String selfDescription,String username);

    public boolean deletejianli(String username);

    public boolean insertjianli(String username);

}
