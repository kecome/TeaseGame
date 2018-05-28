package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:03
 * @Description: 任务列表
 */
public class Task extends BaseModel{
    /**
     * 任务名称
     */
    private String name;
    /**
     * 任务描述
     */
    private String desc;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
