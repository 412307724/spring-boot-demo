package com.yc.dao;

import org.apache.ibatis.annotations.*;

import java.util.Map;

@Mapper
public interface JianLiDao {

    @Select("select * from jianli where username = #{username}")
    public Map selectjbxx(@Param("username")String username);


    @Insert("insert into jianli(name,gender,topDegree,workyear,tel,email,currentState,username) values(#{name},#{gender},#{topDegree},#{workyear},#{tel},#{email},#{currentState},#{username})")
    public int insertjbxx(@Param("name") String name, @Param("gender") String gender, @Param("topDegree") String topDegree, @Param("workyear") String workyear,
                            @Param("tel") String tel, @Param("email") String email, @Param("currentState") String currentState,@Param("username")String username);

    @Update("update jianli set name=#{name},gender=#{gender},topDegree=#{topDegree},workyear=#{workyear},tel=#{tel},email=#{email},currentState=#{currentState} where username=#{username}")
    public int updatejbxx(@Param("name") String name, @Param("gender") String gender, @Param("topDegree") String topDegree, @Param("workyear") String workyear,
                          @Param("tel") String tel, @Param("email") String email, @Param("currentState") String currentState,@Param("username")String username);

    @Update("update jianli set expectCity=#{expectCity},type=#{type},expectPosition=#{expectPosition},expectSalary=#{expectSalary} where username=#{username}")
    public int updateqwgz(@Param("expectCity") String expectCity, @Param("type") String type, @Param("expectPosition") String expectPosition, @Param("expectSalary") String expectSalary,@Param("username")String username);

    @Update("update jianli set resumeName = #{resumeName} where username = #{username}")
    public int renamejianli(@Param("resumeName") String resumeName,@Param("username")String username);

    @Update("update jianli set companyName=#{companyName},positionName=#{positionName},companyYearStart=#{companyYearStart},companyMonthStart=#{companyMonthStart},companyYearEnd=#{companyYearEnd},companyMonthEnd=#{companyMonthEnd} where username = #{username}")
    public int updategzjl(@Param("companyName") String companyName, @Param("positionName") String positionName,@Param("companyYearStart")
            String companyYearStart,@Param("companyMonthStart") String companyMonthStart,@Param("companyYearEnd") String companyYearEnd,@Param("companyMonthEnd") String companyMonthEnd,@Param("username") String username);

    @Update("update jianli set projectName=#{projectName},thePost=#{thePost},projectYearStart=#{projectYearStart},projectMonthStart=#{projectMonthStart},projectYearEnd=#{projectYearEnd},projectMonthEnd=#{projectMonthEnd},projectDescription=#{projectDescription} where username = #{username}")
    public int updatexmjy(@Param("projectName") String projectName,@Param("thePost") String thePost,@Param("projectYearStart") String projectYearStart,@Param("projectMonthStart") String projectMonthStart,@Param("projectYearEnd") String projectYearEnd,@Param("projectMonthEnd") String projectMonthEnd,@Param("projectDescription") String projectDescription,@Param("username") String username);

    @Update("update jianli set schoolName=#{schoolName},degree=#{degree},professionalName=#{professionalName},schoolYearStart=#{schoolYearStart},schoolYearEnd=#{schoolYearEnd} where username = #{username}")
    public int updatejybj(@Param("schoolName") String schoolName,@Param("degree") String degree,@Param("professionalName") String professionalName,@Param("schoolYearStart") String schoolYearStart,@Param("schoolYearEnd") String schoolYearEnd,@Param("username") String username);

    @Update("update jianli set selfDescription=#{selfDescription} where username = #{username}")
    public int updatezwms(@Param("selfDescription") String selfDescription,@Param("username") String username);

    @Delete("delete from jianli where username = #{username}")
    public int deletejianli(@Param("username") String username);

    @Insert("insert into jianli(username) values(#{username})")
    public int insertjianli(String username);

}
