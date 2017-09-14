package com.tansun.easycare.framework.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

	public static String getHour(Date date) {
		String format = "yyyyMMddH";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}

	public static String getDay(Date date) {
		String format = "yyyyMMdd";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}

	public static String getMonth(Date date) {
		String format = "yyyyMM";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}

	public static String getMinuter(Date date) {
		String format = "yyyyMMddHmm";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}

	public static String getTime(Date date) {
		String format = "yyyy-MM-dd H:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}
	
	public static String getTime(Date date,String format) {
//		String format = "yyyy-MM-dd H:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}

	public static Date getDate(String time) throws ParseException {
		String format = "yyyy-MM-dd HH:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date d = sdf.parse(time);
		return d;
	}

	public static String getHourDealy(int delayHour) {
		String collectTime = "";
		Calendar c = java.util.Calendar.getInstance();
		SimpleDateFormat smf = new SimpleDateFormat("yyyyMMddHH");
		c.add(Calendar.HOUR, -Integer.valueOf(delayHour));
		collectTime = smf.format(c.getTime());
		return collectTime;
	}

	public static String getDayDealy(int delayDay) {
		String collectTime = "";
		Calendar c = java.util.Calendar.getInstance();
		SimpleDateFormat smf = new SimpleDateFormat("yyyyMMdd");
		c.add(Calendar.DAY_OF_MONTH, -delayDay);
		collectTime = smf.format(c.getTime());
		return collectTime;
	}

	public static String getMonthDealy(int delayMonth) {
		String collectTime = "";
		Calendar c = java.util.Calendar.getInstance();
		SimpleDateFormat smf = new SimpleDateFormat("yyyyMM");
		c.add(Calendar.MONTH, -delayMonth);
		collectTime = smf.format(c.getTime());
		return collectTime;
	}

	public static String getYearDealy(int delayYear) {
		String collectTime = "";
		Calendar c = java.util.Calendar.getInstance();
		SimpleDateFormat smf = new SimpleDateFormat("yyyy");
		c.add(Calendar.YEAR, -delayYear);
		collectTime = smf.format(c.getTime());
		return collectTime;
	}
	
	
	
	//type:ymd    type:ym
	public static String stringDateFormat(String date,String type)
	{
		String result="";
		if(!date.trim().equals("")&&date!=null&&!date.trim().equals("--"))
		{
			DateFormat df1=new SimpleDateFormat("yyyy年MM月dd日");
			DateFormat df2=new SimpleDateFormat("yyyy年MM月");
			DateFormat df3=new SimpleDateFormat("yyyy-MM-dd");
			DateFormat df4=new SimpleDateFormat("yyyy-MM");
			DateFormat sdf=new SimpleDateFormat("yyyy.MM.dd");
			if(type.equals("ym"))
				sdf=new SimpleDateFormat("yyyy.MM");
			if(date.indexOf("年")!=-1&&date.indexOf("月")!=-1)
			{
				if(date.indexOf("日")!=-1)
				{
					Date date1;
					try {
						date1 = df1.parse(date);
						result= sdf.format(date1);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}												
				}
				else
				{
					Date date1;
					try {
						date1 = df2.parse(date);
						result= sdf.format(date1);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
			else if(date.indexOf("-")!=-1)
			{
				if(date.length()==10)
				{
					Date date1;
					try {
						date1 = df3.parse(date);
						result= sdf.format(date1);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				else if(date.length()==7)
				{
					Date date1;
					try {
						date1 = df4.parse(date);
						result= sdf.format(date1);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		return result;
	}
		
//	public static void main(String[] args) throws ParseException {
//		String time = "2012-08-09 12:00:00";
//		String format = "yyyy-MM-dd H:mm:ss";
//		SimpleDateFormat sdf = new SimpleDateFormat(format);
//		Date d = sdf.parse(time);
//	}
}
