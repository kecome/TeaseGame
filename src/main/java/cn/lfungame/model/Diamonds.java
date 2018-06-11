package cn.lfungame.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 17:31
 * @Description:
 */
@ApiModel(value="diamonds", description = "钻石流水记录")
public class Diamonds extends BaseModel{

    @ApiModelProperty(value="游戏玩家id")
    private Long gamerId;

    @ApiModelProperty(value="钻石")
    private Long diamonds;

    @ApiModelProperty(value="流水说明")
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
