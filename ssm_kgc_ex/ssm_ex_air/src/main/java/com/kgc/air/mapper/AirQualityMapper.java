package com.kgc.air.mapper;

import com.kgc.air.beans.AirQuality;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jialin
 */
public interface AirQualityMapper {
    List<AirQuality> queryAllAirQuality(@Param("districtId") Integer districtId);
    AirQuality queryAirQualityById(@Param("id") Integer id);
    int updateAirQuality(AirQuality airQuality);
    int addAirQuality(AirQuality airQuality);
    void delAirQuality(@Param("id") Integer id);

    int getToalCount();
    List<AirQuality> getAirQualityListPage(@Param("pageNo") int pageNo, @Param("pageSize") int pageSize);
    List<AirQuality> queryAirQualityList2(@Param("DisId") Integer DisId,@Param("pageNo")  int pageNo,@Param("pageSize")  int pageSize);

    int addAirQuality2(AirQuality airQuality);
}
