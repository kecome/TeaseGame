package cn.lfungame.model;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:08
 * @Description: 游戏玩家
 */
public class Gamers extends BaseModel implements Serializable {
    /**
     * 微信登录成功后返回id
     */
    private String wxId;
    /**
     * 手机号码
     */
    private String phoneNumber;
    /**
     * 玩家设备唯一标识id
     */
    private String deviceId;
    /**
     * 呢称
     */
    private String nickName;
    /**
     * 头像
     */
    private String head;
    /**
     * 性别
     */
    private Integer sex;
    /**
     * 出生年月
     */
    private Date age;
    /**
     * 星座 id
     */
    private Integer starSignId;
    /**
     * 个性签名
     */
    private String signature;
    /**
     * 积分
     */
    private Long score;
    /**
     * 经验值
     */
    private Long expPoints;
    /**
     * 金币
     */
    private Long goldCoin;
    /**
     * 钻石
     */
    private Long diamonds;

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Date getAge() {
        return age;
    }

    public void setAge(Date age) {
        this.age = age;
    }

    public Integer getStarSignId() {
        return starSignId;
    }

    public void setStarSignId(Integer starSignId) {
        this.starSignId = starSignId;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public Long getScore() {
        return score;
    }

    public void setScore(Long score) {
        this.score = score;
    }

    public Long getExpPoints() {
        return expPoints;
    }

    public void setExpPoints(Long expPoints) {
        this.expPoints = expPoints;
    }

    public Long getGoldCoin() {
        return goldCoin;
    }

    public void setGoldCoin(Long goldCoin) {
        this.goldCoin = goldCoin;
    }

    public Long getDiamonds() {
        return diamonds;
    }

    public void setDiamonds(Long diamonds) {
        this.diamonds = diamonds;
    }


    public String getWxId() {
        return wxId;
    }

    public void setWxId(String wxId) {
        this.wxId = wxId;
    }

    public String getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }
}
