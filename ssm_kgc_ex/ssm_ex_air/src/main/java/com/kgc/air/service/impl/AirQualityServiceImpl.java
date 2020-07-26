package com.kgc.air.service.impl;

import com.kgc.air.beans.AirQuality;
import com.kgc.air.mapper.AirQualityMapper;
import com.kgc.air.service.AirQualityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jialin
 */
@Service
public class AirQualityServiceImpl implements AirQualityService {
    @Autowired
    private AirQualityMapper airQualityMapper;
    @Override
    public List<AirQuality> queryAirQualityList(Integer id) {
        return airQualityMapper.queryAllAirQuality(id);
    }

    @Override
    public AirQuality queryAirQualityById(Integer id) {
        return airQualityMapper.queryAirQualityById(id);
    }

    @Override
    public int updateAirQuality(AirQuality airQuality) {
        return airQualityMapper.updateAirQuality(airQuality);
    }

    @Override
    public int addAirQuality(AirQuality airQuality) {
        return airQualityMapper.addAirQuality(airQuality);
    }

    @Override
    public void delAirQuality(Integer id) {
        airQualityMapper.delAirQuality(id);
    }

    @Override
    public int getToalCount() {
        return airQualityMapper.getToalCount();
    }

    @Override
    public List<AirQuality> getAirQualityListPage(int pageNo, int pageSize) {
        return airQualityMapper.getAirQualityListPage(pageNo,pageSize);
    }

    @Override
    public List<AirQuality> queryAirQualityList2(Integer DisId, int pageNo, int pageSize) {
        return airQualityMapper.queryAirQualityList2(DisId,pageNo,pageSize);
    }

    @Override
    public int addAirQuality2(AirQuality airQuality) {
        return airQualityMapper.addAirQuality2(airQuality);
    }
}
