package cn.lfungame.mapper;

import cn.lfungame.model.Gamers;
import cn.lfungame.model.User;

import java.util.List;

/**
 * @Auther: xuke
 * @Date: 2018/5/16 13:59
 * @Description:
 */
public interface UserMapper {
    Long insertLog(User user);
    User selectUserById(Long id);
    List<User> selectUsers();
    void insertUser(User user);
    void updateUser(User user);
    void insertGamers(Gamers gamers);
}

