package com.yc.service;

import com.yc.dao.ZhiWeiDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ZhiWeiServiceImpl implements ZhiWeiService {

    @Autowired
    private ZhiWeiDao zhiWeiDao;

    @Override
    public boolean insertzhiwei(String positionType, String positionName, String jobNature, String salaryMin, String salaryMax, String workAddress, String workYear, String education, String positionAdvantage, String positionDetail, String positionAddress, String time, String username) {
        int num = zhiWeiDao.insertzhiwei(positionType, positionName, jobNature, salaryMin, salaryMax, workAddress, workYear, education, positionAdvantage, positionDetail, positionAddress, time, username);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public List<Map> selectzhiwei(String username) {
        List list = zhiWeiDao.selectzhiwei(username);
        return list;
    }

    @Override
    public Map selectzhiweiByID(int zhiwei_id) {
        Map map = zhiWeiDao.selectzhiweiByID(zhiwei_id);
        return map;
    }

    @Override
    public boolean deletezhiwei(int zhiwei_id) {
        int num = zhiWeiDao.deletezhiwei(zhiwei_id);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public boolean updatezhiwei(String positionType, String positionName, String jobNature, String salaryMin, String salaryMax, String workAddress, String workYear, String education, String positionAdvantage, String positionDetail, String positionAddress, String time, int zhiwei_id) {
        int num = zhiWeiDao.updatezhiwei(positionType, positionName, jobNature, salaryMin, salaryMax, workAddress, workYear, education, positionAdvantage, positionDetail, positionAddress, time, zhiwei_id);
        if (num > 0)
            return true;
        else
            return false;
    }

    @Override
    public List<Map> selectByPositionName(String positionName) {
        List list = zhiWeiDao.selectByPositionName(positionName);
        return list;
    }

    @Override
    public Map zhiwei(int zhiwei_id) {
        Map map = zhiWeiDao.zhiwei(zhiwei_id);
        return map;
    }
}
