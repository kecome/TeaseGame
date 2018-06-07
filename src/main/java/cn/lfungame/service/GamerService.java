package cn.lfungame.service;

import cn.lfungame.mapper.GamerMapper;
import cn.lfungame.model.Gamer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.List;

/**
 * @Auther: xuke
 * @Date: 2018/6/4 14:59
 * @Description:
 */
@Service
public class GamerService {

    @Autowired
    private GamerMapper gamerMapper;

    public Gamer selectGamerById(Long id) {
        return gamerMapper.selectGamerById(id);
    }
    public void insertGamer(Gamer gamer) {
        gamerMapper.insertGamer(gamer);
    }
    public Gamer selectGamerByWxId(String wxId) {
        return gamerMapper.selectGamerByWxId(wxId);
    }

    public List<Gamer> selectGamerByDeviceId(String deviceId) {
        return gamerMapper.selectGamerByDeviceId(deviceId);
    }

    public void updateGamer(Gamer gamer) {
        gamerMapper.updateGamer(gamer);
    }

    public Gamer selectGamerByPhoneNumber(String phoneNumber) {
        return gamerMapper.selectGamerByPhoneNumber(phoneNumber);
    }

    private Integer convertAgeToStarSignId(Date age) {
        return null;
    }
}
