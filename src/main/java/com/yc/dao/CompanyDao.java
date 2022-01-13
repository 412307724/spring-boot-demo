package com.yc.dao;

import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface CompanyDao {

    @Insert("insert into companymess(companyname,logoimg,website,city,select_industry,select_scale,s_radio,select_invest,stageorg,temptation,username) values(#{companyname},#{logoimg},#{website},#{city},#{select_industry},#{select_scale},#{s_radio},#{select_invest},#{stageorg},#{temptation},#{username})")
    public int insertcompany(@Param("companyname") String companyname, @Param("logoimg") String logoimg, @Param("website") String website, @Param("city") String city, @Param("select_industry") String select_industry, @Param("select_scale") String select_scale, @Param("s_radio") String s_radio, @Param("select_invest") String select_invest, @Param("stageorg") String stageorg, @Param("temptation") String temptation, @Param("username") String username);

    /*@Select("select company_id,zhiwei_id,companyname,logoimg,website,city,select_industry,select_scale,s_radio,select_invest,temptation,positionName,salaryMin,salaryMax,workYear,education from companymess LEFT JOIN zhiwei on companymess.username = zhiwei.username where companymess.username = #{username}")*/
    @Select("select * from companymess where username = #{username}")
    public Map selectcompany(@Param("username") String username);

    @Update("update companymess set companyname=#{companyname},logoimg=#{logoimg},website=#{website},city=#{city},select_industry=#{select_industry},select_scale=#{select_scale},s_radio=#{s_radio},select_invest=#{select_invest},stageorg=#{stageorg},temptation=#{temptation} where username = #{username}")
    public int updatecompany(@Param("companyname") String companyname, @Param("logoimg") String logoimg, @Param("website") String website, @Param("city") String city, @Param("select_industry") String select_industry, @Param("select_scale") String select_scale, @Param("s_radio") String s_radio, @Param("select_invest") String select_invest, @Param("stageorg") String stageorg, @Param("temptation") String temptation, @Param("username") String username);

    @Delete("delete from companymess where username = #{username}")
    public  int deletecompany(@Param("username")String username);

    /*@Select("select company_id,zhiwei_id,companyname,logoimg,website,city,select_industry,s_radio,temptation,positionName,salaryMin,positionAdvantage,salaryMax,workYear,education from companymess LEFT JOIN\n" +
            "zhiwei on companymess.username = zhiwei.username where city like CONCAT('%',CONCAT(#{city},'%')) order by company_id ")*/
    @Select("select * from companymess where city like CONCAT('%',CONCAT(#{city},'%')) order by company_id")
    public List<Map> selectCompanymessByCity(@Param("city") String city);

    @Select("select * from companymess where companyname like CONCAT('%',CONCAT(#{companyname},'%')) order by company_id")
    public List<Map> selectCompanymessByCompanyName(@Param("companyname") String companyname);

    /*@Select("select company_id,zhiwei_id,companyname,logoimg,website,city,select_industry,select_scale,s_radio,temptation,positionName,salaryMin,salaryMax,workYear,positionAdvantage,positionAddress,workAddress,education from companymess LEFT JOIN\n" +
            "zhiwei on companymess.username = zhiwei.username where company_id = #{company_id} ")*/
    @Select("select * from companymess where company_id = #{company_id}")
    public Map selectCompanymessBycompany_id(@Param("company_id") int company_id);

    @Select("select zhiwei_id,positionType,positionName,jobNature,salaryMin,salaryMax,workAddress,workYear,education,positionAdvantage,positionDetail,positionAddress from zhiwei LEFT JOIN companymess on zhiwei.username = companymess.username where companymess.company_id = #{company_id}")
    public List<Map> selectzw(@Param("company_id") int company_id);

}
