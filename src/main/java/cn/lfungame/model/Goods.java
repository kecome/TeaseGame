package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:25
 * @Description:
 */
public class Goods extends BaseModel {
    /**
     * 商品名称
     */
    private String name;
    /**
     * 商品logo
     */
    private String logo;
    /**
     * 商品类型 0：金币   1：道具
     */
    private Integer type;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
