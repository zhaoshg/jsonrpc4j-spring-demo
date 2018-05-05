<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    ﻿
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
<h2>Hello World!</h2>

<button onclick="javascript:getmethod();">getMethod</button>
<br/>
<br/>
<button onclick="javascript:postmethod();">postMethod</button>

</body>
<script language="JavaScript">
    params = {"userName":"zhaoshg"};

    function getmethod() {
            $.ajax({
                type: 'get', // if post return 32700
                url: "/userService",
                contentType: "application/json; charset=utf-8",
                data: {"jsonrpc":"2.0", "params":JSON.stringify(params), "id":"1089", "method":"getUserByUsername"},
                success: function (res) {
                    alert(res.result.nickName);
                },
                error:function(XMLHttpRequest, textStatus){
                    alert(XMLHttpRequest.responseText);  //XMLHttpRequest.responseText    XMLHttpRequest.status   XMLHttpRequest.readyState
                }


            });
        }


        function postmethod() {

            $.ajax({
                type: 'post',
                url: "/userService",
                contentType: "application/json",
                // cacheControl:"no-cache",
                dataType:"json",
                data: {"jsonrpc":"2.0", "id":"102", "method":"test"},
                success: function (res) {
                    alert(res.result.username);
                },
                error:function(XMLHttpRequest, textStatus){
                    alert(XMLHttpRequest.responseText);
                }
            });
        }
</script>
</html>

