package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:28
 * @Description:
 */
public class GamerGoods extends BaseModel{
    /**
     * 玩家id
     */
    private Long gamerId;
    /**
     * 商品id号
     */
    private Long goodsId;
    /**
     * 商品数量
     */
    private Integer count;

    public Long getGamerId() {
        return gamerId;
    }

    public void setGamerId(Long gamerId) {
        this.gamerId = gamerId;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
