/*******************************************************************************
 * Copyright (c) 2003-2008 leadmind Technologies, Ltd.
 * All rights reserved.
 * 
 * Created on Dec 4, 2008
 *******************************************************************************/

package com.drink.framework.util;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * 数学精度工具
 *
 * @author 夏兵 (mailto:xiabing@leadmind.com.cn)
 */
public class MathScaleUtil {
	/*
	 * 默认除法运算精度
	 */
	private static final int DEFAULT_DIV_SCALE = 10;
	
	private static DecimalFormat df = new DecimalFormat("##,##0.00");
	
	private static DecimalFormat dfRate = new DecimalFormat("##0.0000");

	/**
	 * 提供精确的加法运算
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的和
	 */
	public static double add(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.add(b2).doubleValue();
	}

	/**
	 * 提供精确的加法运算
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的和，以字符串格式返回
	 */
	public static String add(String v1, String v2) {
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.add(b2).toString();
	}

	/**
	 * 提供精确的减法运算
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的差
	 */
	public static double subtract(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.subtract(b2).doubleValue();
	}

	/**
	 * 提供精确的减法运算
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的差，以字符串格式返回
	 */
	public static String subtract(String v1, String v2) {
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.subtract(b2).toString();
	}

	/**
	 * 提供精确的乘法运算
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的积
	 */
	public static double multiply(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.multiply(b2).doubleValue();
	}

	/**
	 * 提供精确的乘法运算
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的积，以字符串格式返回
	 */
	public static String multiply(String v1, String v2) {
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.multiply(b2).toString();
	}

	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，精确到小数点以后10位，以后的数字四舍五入，舍入模式采用ROUND_HALF_UP
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的商
	 */
	public static double divide(double v1, double v2) {
		return divide(v1, v2, DEFAULT_DIV_SCALE);
	}

	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，由scale参数指定精度，以后的数字四舍五入，舍入模式采用ROUND_HALF_UP
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @param scale 小数点后保留几位
	 * @return 两个参数的商
	 */
	public static double divide(double v1, double v2, int scale) {
		return divide(v1, v2, scale, BigDecimal.ROUND_HALF_UP);
	}

	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，由scale参数指定精度，以后的数字四舍五入，舍入模式采用用户指定舍入模式
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @param scale 小数点后保留几位
	 * @param round_mode 指定的舍入模式
	 * @return 两个参数的商
	 */
	public static double divide(double v1, double v2, int scale, int round_mode) {
		if (scale < 0) {
			throw new IllegalArgumentException(
					"The scale must be a positive integer or zero");
		}
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.divide(b2, scale, round_mode).doubleValue();
	}

	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，精确到小数点以后10位，以后的数字四舍五入，舍入模式采用ROUND_HALF_UP
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @return 两个参数的商，以字符串格式返回
	 */
	public static String divide(String v1, String v2) {
		return divide(v1, v2, DEFAULT_DIV_SCALE);
	}

	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，由scale参数指定精度，以后的数字四舍五入，舍入模式采用ROUND_HALF_UP
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @param scale 小数点后保留几位
	 * @return 两个参数的商，以字符串格式返回
	 */
	public static String divide(String v1, String v2, int scale) {
		return divide(v1, v2, scale, BigDecimal.ROUND_HALF_UP);
	}

	/**
	 * 提供（相对）精确的除法运算，当发生除不尽的情况时，由scale参数指定精度，以后的数字四舍五入，舍入模式采用用户指定舍入模式
	 * 
	 * @param v1 参数1
	 * @param v2 参数2
	 * @param scale 小数点后保留几位
	 * @param round_mode 指定的舍入模式
	 * @return 两个参数的商，以字符串格式返回
	 */
	public static String divide(String v1, String v2, int scale, int round_mode) {
		if (scale < 0) {
			throw new IllegalArgumentException(
					"The scale must be a positive integer or zero");
		}
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.divide(b2, scale, round_mode).toString();
	}

	/**
	 * 提供精确的小数位四舍五入处理，舍入模式采用ROUND_HALF_UP
	 * 
	 * @param v 需要四舍五入的数字
	 * @param scale 小数点后保留几位
	 * @return 四舍五入后的结果
	 */
	public static double round(double v, int scale) {
		return round(v, scale, BigDecimal.ROUND_HALF_UP);
	}

	/**
	 * 提供精确的小数位四舍五入处理，舍入模式采用用户指定舍入模式
	 * 
	 * @param v 需要四舍五入的数字
	 * @param scale 小数点后保留几位
	 * @param round_mode 指定的舍入模式
	 * @return 四舍五入后的结果
	 */
	public static double round(double v, int scale, int round_mode) {
		if (scale < 0) {
			throw new IllegalArgumentException(
					"The scale must be a positive integer or zero");
		}
		BigDecimal b = new BigDecimal(Double.toString(v));
		return b.setScale(scale, round_mode).doubleValue();
	}

	/**
	 * 提供精确的小数位四舍五入处理，舍入模式采用ROUND_HALF_UP
	 * 
	 * @param v 需要四舍五入的数字
	 * @param scale 小数点后保留几位
	 * @return 四舍五入后的结果，以字符串格式返回
	 */
	public static String round(String v, int scale) {
		return round(v, scale, BigDecimal.ROUND_HALF_UP);
	}

	/**
	 * 提供精确的小数位四舍五入处理，舍入模式采用用户指定舍入模式
	 * 
	 * @param v 需要四舍五入的数字
	 * @param scale 小数点后保留几位
	 * @param round_mode 指定的舍入模式
	 * @return 四舍五入后的结果，以字符串格式返回
	 */
	public static String round(String v, int scale, int round_mode) {
		if (v == null) {
			return null;
		}

		if (scale < 0) {
			throw new IllegalArgumentException(
					"The scale must be a positive integer or zero");
		}
		BigDecimal b = new BigDecimal(v);
		return b.setScale(scale, round_mode).toString();
	}
	
	/**
	 * 提供精确的小数位四舍五入处理，舍入模式采用ROUND_HALF_UP
	 * 
	 * @param v 需要四舍五入的数字
	 * @param scale 小数点后保留几位
	 * @return 四舍五入后的结果，以Double格式返回
	 */
	public static Double round(Double v, int scale) {
		return round(v, scale, BigDecimal.ROUND_HALF_UP);
	}

	/**
	 * 提供精确的小数位四舍五入处理，舍入模式采用用户指定舍入模式
	 * 
	 * @param v 需要四舍五入的数字
	 * @param scale 小数点后保留几位
	 * @param round_mode 指定的舍入模式
	 * @return 四舍五入后的结果，以Double格式返回
	 */
	public static Double round(Double v, int scale, int round_mode) {
		if (v == null) {
			return null;
		}

		return new Double(round(v.doubleValue(), scale, round_mode));
	}
	
	public static String fomartMoney(Double money){
		return df.format(money);
	}
	
	public static String fomartMoney(String money){
		return df.format(money);
	}
	
	public static String fomartRate(Double rate){
		return dfRate.format(rate);
	}
}