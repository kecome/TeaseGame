package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:13
 * @Description: 玩家成就
 */
public class GamerAchievement extends BaseModel{
    /**
     * 玩家id
     */
    private Long gamerId;
    /**
     * 成就id
     */
    private Long achievementId;
    /**
     * 状态 0：未获得   1：已获得
     */
    private Integer status;

    public Long getGamerId() {
        return gamerId;
    }

    public void setGamerId(Long gamerId) {
        this.gamerId = gamerId;
    }

    public Long getAchievementId() {
        return achievementId;
    }

    public void setAchievementId(Long achievementId) {
        this.achievementId = achievementId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
