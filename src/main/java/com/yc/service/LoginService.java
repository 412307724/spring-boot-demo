package com.yc.service;


public interface LoginService {
    public boolean login(String username, String password);
    public boolean isRegister(String username,String password,String insurepassword,String type_id);
    public boolean updatePassword(String username,String newpassword,String insurepassword);
    public String selectTypeId(String username);
}
