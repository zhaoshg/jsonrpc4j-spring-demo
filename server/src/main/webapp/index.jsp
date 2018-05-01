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
        function getmethod() {
            $.ajax({
                type: 'get', //if get return 32602  ,if post return 32700
                url: "/userService",
                contentType: "application/json; charset=utf-8",
                data: {
                    "jsonrpc": "2.0",
                    "method": "getUserByUsername",
                    "id": 2,
                    "params": ["zhaoshg"]
                },
                success: function (res) {
                    alert(res);
                },
                error:function(XMLHttpRequest, textStatus){
                    alert(XMLHttpRequest.responseText);  //XMLHttpRequest.responseText    XMLHttpRequest.status   XMLHttpRequest.readyState
                }


            });
        }

        function postmethod() {
            $.ajax({
                type: 'post', //if get return 32602  ,if post return 32700
                url: "/userService",
                contentType: "application/json; charset=utf-8",
                data: {
                    "jsonrpc": "2.0",
                    "method": "getUserByUsername",
                    "id": 2,
                    "params": ["zhaoshg"]
                },
                success: function (res) {
                    alert(res);
                },
                error:function(XMLHttpRequest, textStatus){
                    alert(XMLHttpRequest.responseText);  //XMLHttpRequest.responseText    XMLHttpRequest.status   XMLHttpRequest.readyState
                }


            });
        }
</script>
</html>

