package com.zhaoshg.rpc.service;

import com.googlecode.jsonrpc4j.spring.AutoJsonRpcServiceImpl;

@AutoJsonRpcServiceImpl
public class OtherServiceImpl implements OtherService {
    public Boolean otherMethod() {
        System.out.println("this is other method");
        return Boolean.TRUE;
    }
}
