package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:19
 * @Description: 玩家游戏积分流水
 */
public class GameScore extends BaseModel{
    /**
     * 游戏玩家id
     */
    private Long gamerId;
    /**
     * 游戏id
     */
    private Long gameId;
    /**
     * 积分
     */
    private Long score;
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

    public Long getGameId() {
        return gameId;
    }

    public void setGameId(Long gameId) {
        this.gameId = gameId;
    }

    public Long getScore() {
        return score;
    }

    public void setScore(Long score) {
        this.score = score;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
