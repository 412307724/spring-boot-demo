package com.yc.service;

import com.yc.dao.ToudiDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ToudiServiceImpl implements ToudiService {
    @Autowired
    private ToudiDao toudiDao;

    @Override
    public int selectJianli_id(String username) {
        int jianli_id = toudiDao.selectJianli_id(username);
        return jianli_id;
    }

    @Override
    public boolean toudijl(int jianli_id, int zhiwei_id, int company_id, String touditime) {
        int num = toudiDao.toudijl(jianli_id, zhiwei_id, company_id, touditime);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public List<Map> selectToudi(String username) {
        List list = toudiDao.selectToudi(username);
        return list;
    }

    @Override
    public List<Map> interview(String username) {
        List list = toudiDao.interview(username);
        return list;
    }

    @Override
    public List<Map> notsuitable(String username) {
        List list = toudiDao.notsuitable(username);
        return list;
    }

    @Override
    public List<Map> querymess(String username) {
        List list = toudiDao.querymess(username);
        return list;
    }

    @Override
    public List<Map> jlbuheshi(String username) {
        List list = toudiDao.jlbuheshi(username);
        return list;
    }

    @Override
    public List<Map> tongzhimianshi(String username) {
        List list = toudiDao.tongzhimianshi(username);
        return list;
    }

    @Override
    public Map querymessage(int jianli_id) {
        Map map = toudiDao.querymessage(jianli_id);
        return map;
    }

    @Override
    public boolean jlnosuitable(int toudi_id) {
        boolean b = toudiDao.jlnosuitable(toudi_id);
        if (b)
            return true;
        else
            return false;
    }

    @Override
    public boolean tongzhims(int toudi_id) {
        boolean b = toudiDao.tongzhims(toudi_id);
        if (b)
            return true;
        else
            return false;
    }
}
