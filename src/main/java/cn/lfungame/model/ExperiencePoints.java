package cn.lfungame.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:35
 * @Description: 经验值流水表
 */
@ApiModel(value="experiencePoints", description = "经验值流水记录")
public class ExperiencePoints extends BaseModel{

    @ApiModelProperty(value="游戏玩家id")
    private Long gamerId;

    @ApiModelProperty(value="经验值")
    private Long expPoints;

    @ApiModelProperty(value="流水说明")
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
