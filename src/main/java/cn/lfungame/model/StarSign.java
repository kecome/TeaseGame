package cn.lfungame.model;

import java.util.Date;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:31
 * @Description: 星座字典表
 */
public class StarSign{
    /**
     * id
     */
    private Integer id;
    /**
     * 星座名称
     */
    private String name;
    /**
     * 创建时间
     */
    private Date created;
    /**
     * 修改时间
     */
    private Date updated;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
