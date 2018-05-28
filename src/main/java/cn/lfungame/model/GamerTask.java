package cn.lfungame.model;

/**
 * @Auther: xuke
 * @Date: 2018/5/28 18:06
 * @Description:
 */
public class GamerTask extends BaseModel {
    /**
     * 玩家id
     */
    private Long gamerId;
    /**
     * 任务id
     */
    private Long taskId;
    /**
     * 任务状态 0：未完成   1：已完成
     */
    private Integer status;

    public Long getGamerId() {
        return gamerId;
    }

    public void setGamerId(Long gamerId) {
        this.gamerId = gamerId;
    }

    public Long getTaskId() {
        return taskId;
    }

    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
