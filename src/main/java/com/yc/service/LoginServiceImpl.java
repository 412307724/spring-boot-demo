package com.yc.service;

import com.yc.dao.LoginDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao loginDao;

    @Override
    public boolean login(String username, String password) {
        List list = loginDao.login(username, password);
        if (list.size() > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean isRegister(String username, String password,String insurepassword, String type_id) {
        int num = loginDao.isRegister(username, password,insurepassword, type_id);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updatePassword(String username, String newpassword,String insurepassword) {
        int num = loginDao.updatePassword(username, newpassword,insurepassword);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public String selectTypeId(String username) {
        String type_id = loginDao.selectTypeId(username);
        return type_id;
    }
}
