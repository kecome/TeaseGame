package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:35
 * @Description: 经验值流水表
 */
public class ExperiencePoints extends BaseModel{
    /**
     * 游戏玩家id
     */
    private Long gamerId;
    /**
     * 经验值
     */
    private Long expPoints;
    /**
     * 流水说明
     */
    private String comment;

    public Long getGamerId() {
        return gamerId;
    }

    public void setGamerId(Long gamerId) {
        this.gamerId = gamerId;
    }

    public Long getExpPoints() {
        return expPoints;
    }

    public void setExpPoints(Long expPoints) {
        this.expPoints = expPoints;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
