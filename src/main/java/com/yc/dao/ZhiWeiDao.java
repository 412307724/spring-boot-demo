package com.yc.dao;

import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface ZhiWeiDao {

    @Insert("insert into zhiwei(positionType,positionName,jobNature,salaryMin,salaryMax,workAddress,workYear,education,positionAdvantage,positionDetail,positionAddress,time,username) values(#{positionType},#{positionName},#{jobNature},#{salaryMin},#{salaryMax},#{workAddress},#{workYear},#{education},#{positionAdvantage},#{positionDetail},#{positionAddress},#{time},#{username}) ")
    public int insertzhiwei(@Param("positionType") String positionType,@Param("positionName") String positionName,@Param("jobNature") String jobNature,@Param("salaryMin") String salaryMin,@Param("salaryMax") String salaryMax,@Param("workAddress") String workAddress,@Param("workYear") String workYear,@Param("education") String education,@Param("positionAdvantage") String positionAdvantage,@Param("positionDetail") String positionDetail,@Param("positionAddress") String positionAddress,@Param("time")String time,@Param("username") String username);

    @Select("select * from zhiwei where username = #{username}")
    public List<Map> selectzhiwei(@Param("username") String username);

    @Select("select * from zhiwei where zhiwei_id = #{zhiwei_id}")
    public Map selectzhiweiByID(@Param("zhiwei_id") int zhiwei_id);

    @Delete("delete from zhiwei where zhiwei_id = #{zhiwei_id}")
    public int deletezhiwei(@Param("zhiwei_id") int zhiwei_id);

    @Update("update zhiwei set positionType=#{positionType},positionName=#{positionName},jobNature=#{jobNature},salaryMin=#{salaryMin},salaryMax=#{salaryMax},workAddress=#{workAddress},workYear=#{workYear},education=#{education},positionAdvantage=#{positionAdvantage},positionDetail=#{positionDetail},positionAddress=#{positionAddress},time=#{time} where zhiwei_id = #{zhiwei_id}")
    public int updatezhiwei(@Param("positionType") String positionType,@Param("positionName") String positionName,@Param("jobNature") String jobNature,@Param("salaryMin") String salaryMin,@Param("salaryMax") String salaryMax,@Param("workAddress") String workAddress,@Param("workYear") String workYear,@Param("education") String education,@Param("positionAdvantage") String positionAdvantage,@Param("positionDetail") String positionDetail,@Param("positionAddress") String positionAddress,@Param("time")String time,@Param("zhiwei_id") int zhiwei_id);

    @Select("select zhiwei_id,company_id,logoimg,positionName,jobNature,salaryMin,salaryMax,workAddress,workYear,education,positionAdvantage,companyname,select_industry,select_scale,s_radio,companymess.username\n" +
            " from zhiwei LEFT JOIN  companymess on zhiwei.username = companymess.username where positionName like  CONCAT('%',CONCAT(#{positionName},'%'))")
    public List<Map> selectByPositionName(String positionName);

    @Select("select zhiwei_id,company_id,logoimg,positionName,jobNature,salaryMin,salaryMax,workAddress,workYear,education,positionAdvantage,companyname,select_industry,select_scale,s_radio,positionDetail,positionAddress,website,companymess.username\n" +
            " from zhiwei LEFT JOIN  companymess on zhiwei.username = companymess.username where zhiwei_id = #{zhiwei_id}  ")
    public Map zhiwei(int zhiwei_id);
}
