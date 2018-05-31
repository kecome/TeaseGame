package cn.lfungame.model;

import java.util.Date;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:36
 * @Description:
 */
public class City {
    /**
     * id
     */
    private Integer id;
    /**
     * 市名称
     */
    private String name;

    /**
     * 所属省id
     */
    private Long provinceId;

    /**
     * 创建时间
     */
    private Date created;
    /**
     * 修改时间
     */
    private Date updated;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Long provinceId) {
        this.provinceId = provinceId;
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
