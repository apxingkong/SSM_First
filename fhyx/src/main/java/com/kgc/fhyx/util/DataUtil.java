package com.kgc.fhyx.util;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class DataUtil
{
	private static DecimalFormat df = new DecimalFormat("#.00");

	public static String doubleFormat(double src)
	{
		return df.format(src);
	}

	public static String doubleDivide(String src1, String src2)
	{
		BigDecimal big1 = new BigDecimal(src1);
		BigDecimal big2 = new BigDecimal(src2);
		BigDecimal rst = big1.divide(big2);

		return doubleFormat(rst.doubleValue());
	}

	public static String doubleInverse(String src)
	{
		BigDecimal big1 = new BigDecimal(src);

		return doubleFormat(0 - big1.doubleValue());
	}

	public static String getUUID()
	{
		UUID uuid = UUID.randomUUID();
		return uuid + "";
	}

	public static String builId()
	{

		String uuid = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		// 生成6位前缀，日期，后缀8位为随机数
		long suffix = Math.abs(uuid.hashCode() % 100000000);
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
		String time = sdf.format(new Date(System.currentTimeMillis()));

		long prefix = Long.parseLong(time) * 100000000;
		String userId = String.valueOf(prefix + suffix);
		return userId;
	}

	public static void main(String[] args)
	{
		String s1 = "7.99";
		String s2 = "2";
		System.out.println(doubleDivide(s1, s2));
		System.out.println(doubleInverse(s1));
		System.out.println(builId());
	}
}
