package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:31
 * @Description:
 */
public class Diamonds extends BaseModel{
    /**
     * 游戏玩家id
     */
    private Long gamerId;
    /**
     * 钻石
     */
    private Long diamonds;
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

    public Long getDiamonds() {
        return diamonds;
    }

    public void setDiamonds(Long diamonds) {
        this.diamonds = diamonds;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
