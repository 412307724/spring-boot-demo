package com.yc.service;

import java.util.List;
import java.util.Map;

public interface ToudiService {
    public int selectJianli_id(String username);

    public boolean toudijl(int jianli_id,int zhiwei_id,int company_id,String touditime);

    public List<Map> selectToudi(String username);

    public List<Map> interview(String username);

    public List<Map> notsuitable(String username);

    public List<Map> querymess(String username);

    public List<Map> jlbuheshi(String username);

    public List<Map> tongzhimianshi(String username);

    public Map querymessage(int jianli_id);

    public boolean jlnosuitable(int toudi_id);

    public boolean tongzhims(int toudi_id);
}
