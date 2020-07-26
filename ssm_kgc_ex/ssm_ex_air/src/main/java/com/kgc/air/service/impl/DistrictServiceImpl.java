package com.kgc.air.service.impl;

import com.kgc.air.beans.District;
import com.kgc.air.mapper.DistrictMapper;
import com.kgc.air.service.DistrictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jialin
 */
@Service
public class DistrictServiceImpl implements DistrictService {
    @Autowired
    private DistrictMapper districtMapper;

    @Override
    public List<District> selectAirQualityList() {
        return districtMapper.queryAllDistrict();
    }

    @Override
    public District queryDistrictById(Integer id) {
        return districtMapper.queryDistrictById(id);
    }
}
