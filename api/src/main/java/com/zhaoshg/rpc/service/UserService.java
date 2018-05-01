package com.zhaoshg.rpc.service;

import com.googlecode.jsonrpc4j.JsonRpcParam;
import com.googlecode.jsonrpc4j.JsonRpcService;

@JsonRpcService("/userService")
public interface UserService {

    User getUserByUsername(@JsonRpcParam(value = "userName") String userName);

    User test();

    void saveUser(User user);
}
