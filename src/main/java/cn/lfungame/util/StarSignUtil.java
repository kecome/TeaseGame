package cn.lfungame.util;

import java.util.Calendar;
import java.util.Date;

/**
 * @Auther: xuke
 * @Date: 2018/6/6 19:27
 * @Description:
 */
public class StarSignUtil {
    private final static int[] dayArr = new int[] { 20, 19, 21, 20, 21, 22, 23,
            23, 23, 24, 23, 22 };
    private final static String[] constellationArr = new String[] { "摩羯座",
            "水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座",
            "天蝎座", "射手座", "摩羯座" };
    /**
     * Java通过生日计算星座
     */
    public static String getConstellation(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int day = calendar.get(Calendar.DAY_OF_MONTH);
        int month = calendar.get(Calendar.MONTH);
        return day < dayArr[month - 1] ? constellationArr[month - 1] : constellationArr[month];
    }

    /**
     * 根据出生日期计算属相和星座
     *
     * @param args
     */
    public static void main(String[] args) {
        int month = 7;
        int day = 6;
        System.out.println("星座为：" + getConstellation(new Date()));
    }


}
