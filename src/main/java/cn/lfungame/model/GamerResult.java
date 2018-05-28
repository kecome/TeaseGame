package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:43
 * @Description: 玩家胜负结果流水表
 */
public class GamerResult extends BaseModel{
    /**
     * 游戏玩家id 1
     */
    private Long gamerId1;
    /**
     * 游戏玩家id 2
     */
    private Long gamerId2;
    /**
     * 胜负结果 0：负, 1: 胜
     */
    private Integer result;
    /**
     * 单机模式：0  pk模式：1
     */
    private Integer type;

    public Long getGamerId1() {
        return gamerId1;
    }

    public void setGamerId1(Long gamerId1) {
        this.gamerId1 = gamerId1;
    }

    public Long getGamerId2() {
        return gamerId2;
    }

    public void setGamerId2(Long gamerId2) {
        this.gamerId2 = gamerId2;
    }

    public Integer getResult() {
        return result;
    }

    public void setResult(Integer result) {
        this.result = result;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
