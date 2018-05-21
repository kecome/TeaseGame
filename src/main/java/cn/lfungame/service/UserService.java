package cn.lfungame.service;

import cn.lfungame.exception.BusinessException;
import cn.lfungame.exception.ErrorInfo;
import cn.lfungame.mapper.UserMapper;
import cn.lfungame.model.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.PageSerializable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Auther: xuke
 * @Date: 2018/5/16 14:00
 * @Description:
 */
@Transactional
@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User selectUserById(Long id) {
        throw new BusinessException(ErrorInfo.ARGUMENT_NOT_VALID.code, ErrorInfo.ARGUMENT_NOT_VALID.desc);
      //  return userMapper.selectUserById(id);
    }

    public List<User> selectUsers() {
        return userMapper.selectUsers();
    }

    public PageSerializable selectPage(int pageNum, int pageSize, String orderBy) {
        PageHelper.startPage(pageNum,pageSize, orderBy);
        List<User> list = userMapper.selectUsers();
        PageSerializable page = new PageSerializable(list);
        return page;
    }

    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    public void updateUser(User user) {
        userMapper.updateUser(user);
    }
}
