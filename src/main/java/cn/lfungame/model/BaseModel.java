package cn.lfungame.model;

import java.util.Date;
/**
 * @Auther: xuke
 * @Date: 2018/5/16 14:38
 * @Description: model公共属性类
 */
public class BaseModel {
    /**
     * id号
     */
    private Long id;
    /**
     * 创建时间
     */
    private Date created;
    /**
     * 最近修改时间
     */
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
