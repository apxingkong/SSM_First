package com.kgc.air.beans;

import lombok.Data;

import java.util.Date;

/**
 * lombok可以添加注解
 * @Data //@Data注解可以省去setter/getter以及toString、equals和hashCode方法
 * @get,@set,@toString
 * @author jialin
 */
@Data
public class AirQuality {
    private Integer id;
    private Integer districtId;
    private String districtName;
    private Date monitorTime;
    private String moniTime;
    private Integer pm10;
    private Integer pm25;
    private String monitoringStation;
    private Date lastModifyTime;
}
