package com.kgc.air.service;

import com.kgc.air.beans.AirQuality;

import java.util.List;

/**
 * @author jialin
 */
public interface AirQualityService {
    List<AirQuality> queryAirQualityList(Integer id);
    //根据id查询信息
    AirQuality queryAirQualityById(Integer id);
    //更新
    int updateAirQuality(AirQuality airQuality);
    int addAirQuality(AirQuality airQuality);
    void delAirQuality(Integer id);

    int getToalCount();
    List<AirQuality> getAirQualityListPage(int pageNo, int pageSize);
    List<AirQuality> queryAirQualityList2(Integer DisId,int pageNo, int pageSize);

    int addAirQuality2(AirQuality airQuality);
}
