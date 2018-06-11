package cn.lfungame.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.Date;
/**
 * @Auther: xuke
 * @Date: 2018/5/16 14:38
 * @Description: model公共属性类
 */
@ApiModel(value="baseModel", description = "实体基类")
public class BaseModel {

    @ApiModelProperty(value="id号")
    private Long id;

    @ApiModelProperty(value="创建时间 ")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date created;

    @ApiModelProperty(value="最近修改时间")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date updated;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}
