package com.kgc.air.utils;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil
{
    /**
     * 单位分钟
     * <一句话功能简述>
     * <功能详细描述>
     * @param dateTime
     * @return
     * @see [类、类#方法、类#成员]
     */
    public static Integer getPassMinuteTime(Date dateTime)
    {
        if (dateTime == null)
        {
            return null;
        }
        
        Long milliseconds = Calendar.getInstance().getTime().getTime() - dateTime.getTime();
        
        return (int)(milliseconds / 1000 / 60);
    }
    
    //获取当前时间
    public static Timestamp getCurrentDateTime(){
    	
    	Date date = new Date();
    	Timestamp currentDateTime = new Timestamp(date.getTime());
    	return currentDateTime;
    }
    
    public static String getNowDate()
    {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(date);
    }
}
