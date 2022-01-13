package com.yc.dao;

import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface ToudiDao {
    @Select("select jianli_id from jianli where username = #{username}")
    public int selectJianli_id(@Param("username") String username);

    @Insert("insert into toudi(jianli_id,zhiwei_id,company_id,touditime) values(#{jianli_id},#{zhiwei_id},#{company_id},#{touditime})")
    public int toudijl(@Param("jianli_id") int jianli_id,@Param("zhiwei_id") int zhiwei_id,@Param("company_id") int company_id,@Param("touditime") String touditime);

    @Select("select toudi.zhiwei_id,toudi.company_id,logoimg,zhiwei.positionName,jobNature,salaryMin,salaryMax,workAddress,zhiwei.workYear,education,positionAdvantage,companymess.companyname,select_industry,select_scale,s_radio,positionDetail,positionAddress,website\n" +
            "from toudi left join zhiwei on toudi.zhiwei_id = zhiwei.zhiwei_id LEFT JOIN companymess on toudi.company_id = companymess.company_id left join jianli on toudi.jianli_id = jianli.jianli_id where jianli.username = #{username}")
    public List<Map> selectToudi(@Param("username")String username);

    @Select("select toudi.zhiwei_id,toudi.company_id,logoimg,zhiwei.positionName,jobNature,salaryMin,salaryMax,workAddress,zhiwei.workYear,education,positionAdvantage,companymess.companyname,select_industry,select_scale,s_radio,positionDetail,positionAddress,website\n" +
            "from toudi left join zhiwei on toudi.zhiwei_id = zhiwei.zhiwei_id LEFT JOIN companymess on toudi.company_id = companymess.company_id left join jianli on toudi.jianli_id = jianli.jianli_id where jianli.username = #{username} and status = '通知面试' ")
    public List<Map> interview(@Param("username")String username);

    @Select("select toudi.zhiwei_id,toudi.company_id,logoimg,zhiwei.positionName,jobNature,salaryMin,salaryMax,workAddress,zhiwei.workYear,education,positionAdvantage,companymess.companyname,select_industry,select_scale,s_radio,positionDetail,positionAddress,website\n" +
            "from toudi left join zhiwei on toudi.zhiwei_id = zhiwei.zhiwei_id LEFT JOIN companymess on toudi.company_id = companymess.company_id left join jianli on toudi.jianli_id = jianli.jianli_id where jianli.username = #{username} and status = '不合适' ")
    public List<Map> notsuitable(@Param("username")String username);

    @Select("select toudi_id,jianli.jianli_id,name,gender,topDegree,workyear,tel,email,currentState,expectCity,type,expectPosition,expectSalary,resumeName,jianli.companyName,positionName,companyYearStart,companyMonthStart,companyYearEnd,companyMonthEnd,projectName,thePost,projectYearStart,projectMonthStart from toudi\n" +
            "left join jianli on toudi.jianli_id = jianli.jianli_id left join companymess on toudi.company_id = companymess.company_id where companymess.username = #{username}")
    public List<Map> querymess(@Param("username")String username);

    @Select("select toudi_id,jianli.jianli_id,name,gender,topDegree,workyear,tel,email,currentState,expectCity,type,expectPosition,expectSalary,resumeName,jianli.companyName,positionName,companyYearStart,companyMonthStart,companyYearEnd,companyMonthEnd,projectName,thePost,projectYearStart,projectMonthStart from toudi\n" +
            "left join jianli on toudi.jianli_id = jianli.jianli_id left join companymess on toudi.company_id = companymess.company_id where companymess.username = #{username} and status = '不合适' ")
    public List<Map> jlbuheshi(@Param("username")String username);

    @Select("select toudi_id,jianli.jianli_id,name,gender,topDegree,workyear,tel,email,currentState,expectCity,type,expectPosition,expectSalary,resumeName,jianli.companyName,positionName,companyYearStart,companyMonthStart,companyYearEnd,companyMonthEnd,projectName,thePost,projectYearStart,projectMonthStart from toudi\n" +
            "left join jianli on toudi.jianli_id = jianli.jianli_id left join companymess on toudi.company_id = companymess.company_id where companymess.username = #{username} and status = '通知面试' ")
    public List<Map> tongzhimianshi(@Param("username")String username);

    @Select("select * from jianli where jianli_id = #{jianli_id}")
    public Map querymessage(@Param("jianli_id")int jianli_id);

    @Update("update toudi set status = '不合适' where toudi_id = #{toudi_id}")
    public boolean jlnosuitable(@Param("toudi_id")int toudi_id);

    @Update("update toudi set status = '通知面试' where toudi_id = #{toudi_id}")
    public boolean tongzhims(@Param("toudi_id")int toudi_id);

}
