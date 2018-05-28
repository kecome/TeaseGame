package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:27
 * @Description:  金币流水表
 */
public class GoldCoin extends BaseModel {
    /**
     * 游戏玩家id
     */
    private Long gamerId;
    /**
     * 金币
     */
    private Long gold;
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

    public Long getGold() {
        return gold;
    }

    public void setGold(Long gold) {
        this.gold = gold;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
