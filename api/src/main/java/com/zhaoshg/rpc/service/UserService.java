package com.zhaoshg.rpc.service;

import com.googlecode.jsonrpc4j.JsonRpcService;

@JsonRpcService("/userService")
public interface UserService {

    User getUserByUsername(String userName);

    void saveUser(User user);
}
