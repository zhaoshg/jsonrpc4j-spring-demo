package com.zhaoshg.rpc.service;


import com.googlecode.jsonrpc4j.JsonRpcService;

@JsonRpcService("/otherService")
public interface OtherService {

    Boolean otherMethod();
}
