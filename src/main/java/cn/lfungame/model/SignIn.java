package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:08
 * @Description: 签到表
 */
public class SignIn extends BaseModel{
    /**
     * 玩家id
     */
    private Long gamerId;

    public Long getGamerId() {
        return gamerId;
    }

    public void setGamerId(Long gamerId) {
        this.gamerId = gamerId;
    }
}
