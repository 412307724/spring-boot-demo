package com.yc.service;

import java.util.List;
import java.util.Map;

public interface ZhiWeiService {
    public boolean insertzhiwei(String positionType, String positionName, String jobNature, String salaryMin, String salaryMax, String workAddress, String workYear, String education, String positionAdvantage, String positionDetail, String positionAddress,String time, String username);

    public List<Map> selectzhiwei(String username);

    public Map selectzhiweiByID(int zhiwei_id);

    public boolean deletezhiwei(int zhiwei_id);

    public boolean updatezhiwei(String positionType, String positionName, String jobNature, String salaryMin, String salaryMax, String workAddress, String workYear, String education, String positionAdvantage, String positionDetail, String positionAddress,String time, int zhiwei_id);

    public List<Map> selectByPositionName(String positionName);

    public Map zhiwei(int zhiwei_id);

}
