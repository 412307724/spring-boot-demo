package com.yc.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface LoginDao {
    @Select("select * from user where username=#{username} and password=#{password}")
    public List<String> login(@Param("username") String username, @Param("password") String password);

    public int isRegister(@Param("username")String username,@Param("password")String password,@Param("insurepassword") String insurepassword,@Param("type_id")String type_id);

    public int updatePassword(@Param("username")String username,@Param("newpassword")String newpassword,@Param("insurepassword")String insurepassword);

    @Select("select type_id from user where username=#{username}")
    public String selectTypeId(@Param("username")String username);
}
