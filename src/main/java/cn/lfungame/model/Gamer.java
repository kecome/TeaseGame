package cn.lfungame.model;

import cn.lfungame.util.StarSignUtil;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.Date;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:08
 * @Description: 游戏玩家
 */
@ApiModel(value="Gamer", description = "玩家对象")
public class Gamer extends BaseModel implements Serializable {

    @ApiModelProperty(value="微信登录成功后返回id")
    private String wxId;

    @ApiModelProperty(value="手机号码")
    private String phoneNumber;

    @ApiModelProperty(value="玩家设备唯一标识id")
    private String deviceId;

    @ApiModelProperty(value="呢称")
    private String nickName;

    @ApiModelProperty(value="头像")
    private String head;

    @ApiModelProperty(value="性别 0:男  1:女")
    private Integer sex;

    @ApiModelProperty(value="出生年月")
    private Date age;

    @ApiModelProperty(value="星座 ")
    private String starSign;

    @ApiModelProperty(value="省 ")
    private String province;

    @ApiModelProperty(value="市 ")
    private String city;

    @ApiModelProperty(value="个性签名 ")
    private String signature;

    @ApiModelProperty(value="积分 ")
    private Long score;

    @ApiModelProperty(value="经验值 ")
    private Long expPoints;

    @ApiModelProperty(value="金币 ")
    private Long goldCoin;

    @ApiModelProperty(value="钻石 ")
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
        if(age != null) {
            this.starSign = StarSignUtil.getConstellation(age);
        }
        this.age = age;
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

    public String getStarSign() {
        return starSign;
    }

    public void setStarSign(String starSign) {
        this.starSign = starSign;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
