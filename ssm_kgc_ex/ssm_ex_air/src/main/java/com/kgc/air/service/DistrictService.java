package com.kgc.air.service;

import com.kgc.air.beans.District;

import java.util.List;

/**
 * @author jialin
 */
public interface DistrictService {
   //查询区域列表
    List<District> selectAirQualityList();
    District queryDistrictById(Integer id);
}
