package cn.lfungame.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:09
 * @Description: 游戏成就
 */
@ApiModel(value="achievement", description = "游戏成就")
public class Achievement extends BaseModel{

    @ApiModelProperty(value="成就名称")
    private String name;

    @ApiModelProperty(value="成就logo")
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
