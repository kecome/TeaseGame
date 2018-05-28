package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:09
 * @Description: 游戏成就
 */
public class Achievement extends BaseModel{
    /**
     * 成就名称
     */
    private String name;
    /**
     * 成就logo
     */
    private String logo;

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
}
