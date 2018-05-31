package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:10
 * @Description: 平台游戏
 */
public class Game extends BaseModel{
    /**
     *游戏名称
     */
    private String name;
    /**
     * 游戏icon
     */
    private String icon;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
