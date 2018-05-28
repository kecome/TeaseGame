package cn.lfungame.model;

import java.util.Date;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:35
 * @Description: 省
 */
public class Province{
    /**
     * id
     */
    private Integer id;
    /**
     * 省名称
     */
    private String name;
    /**
     * 创建时间
     */
    private Date created;
    /**
     *  修改时间
     */
    private Date updated;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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
