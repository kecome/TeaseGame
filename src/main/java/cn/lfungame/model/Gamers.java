package cn.lfungame.model;

import java.util.Date;

/**
 * @Auther: ZouLiFu
 * @Date: 2018/5/28 16:21
 * @Description:gamers实体类
 */
public class Gamers  {
    private Long id;

    private String wxid;

    private String deviceid;

    private String phonenumber;

    private String nickname;

    private String head;

    private Byte sex;

    private Date age;

    private Byte starsignid;

    private String signature;

    private Long score;

    private Long exppoints;

    private Long goldcoin;

    private Long diamonds;

    private Date created;

    private Date updated;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWxid() {
        return wxid;
    }

    public void setWxid(String wxid) {
        this.wxid = wxid == null ? null : wxid.trim();
    }

    public String getDeviceid() {
        return deviceid;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid == null ? null : deviceid.trim();
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber == null ? null : phonenumber.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head == null ? null : head.trim();
    }

    public Byte getSex() {
        return sex;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public Date getAge() {
        return age;
    }

    public void setAge(Date age) {
        this.age = age;
    }

    public Byte getStarsignid() {
        return starsignid;
    }

    public void setStarsignid(Byte starsignid) {
        this.starsignid = starsignid;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature == null ? null : signature.trim();
    }

    public Long getScore() {
        return score;
    }

    public void setScore(Long score) {
        this.score = score;
    }

    public Long getExppoints() {
        return exppoints;
    }

    public void setExppoints(Long exppoints) {
        this.exppoints = exppoints;
    }

    public Long getGoldcoin() {
        return goldcoin;
    }

    public void setGoldcoin(Long goldcoin) {
        this.goldcoin = goldcoin;
    }

    public Long getDiamonds() {
        return diamonds;
    }

    public void setDiamonds(Long diamonds) {
        this.diamonds = diamonds;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}
