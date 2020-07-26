package com.kgc.air.mapper;

import com.kgc.air.beans.District;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jialin
 */
public interface DistrictMapper {
    List<District> queryAllDistrict();
    District queryDistrictById(@Param("id") Integer id);

}
