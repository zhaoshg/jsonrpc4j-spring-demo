package com.zhaoshg.rpc.service;

import com.googlecode.jsonrpc4j.spring.AutoJsonRpcServiceImpl;

import java.util.Date;

@AutoJsonRpcServiceImpl
public class UserServiceImpl implements UserService {

    public User getUserByUsername(String userName) {
        if(userName == null)
            return null;
        User user = new User();
        user.setId(1L);
        user.setUsername("zhaoshg");
        user.setNickName("中文名");
        user.setLastLoginTime(new Date());
        return user;
    }

    public User test() {
        User user = new User();
        user.setId(1L);
        user.setUsername("zhaoshg");
        user.setNickName("中文名");
        user.setLastLoginTime(new Date());
        return user;
    }

    public void saveUser(User user) {
        System.out.println(user.toString());
    }
}
