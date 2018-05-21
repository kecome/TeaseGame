package cn.lfungame.util;

import java.util.Date;

/**
 * @Auther: xuke
 * @Date: 2018/5/17 10:19
 * @Description:
 */
public class Pretreatment {

    public static long nextId() {
        return SnowflakeIdWorker.getInstance().nextId();
    }

    public static Date now() {
        return new Date();
    }
}

