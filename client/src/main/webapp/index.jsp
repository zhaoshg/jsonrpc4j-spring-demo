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
    myparams = {"userName": "zhaoshg"};

    function getmethod() {
        $.ajax({
            type: 'get', // if post return 32700
            url: "http://127.0.0.1:8080/userService",
            contentType: "application/json; charset=utf-8",
            traditional: true,
            //JSON.stringify is important,otherwise your servlet will throw 32602 error。
            data: {jsonrpc: "2.0", params: JSON.stringify(myparams), id: "1089", method: "getUserByUsername"},
            success: function (res) {

                alert(res.result.nickName);
            },
            error: function (XMLHttpRequest, textStatus) {
                alert(XMLHttpRequest.responseText);  //XMLHttpRequest.responseText    XMLHttpRequest.status   XMLHttpRequest.readyState
            }


        });
    }


    function postmethod() {
        $.ajax({
            url: 'http://127.0.0.1:8080/userService',
            type: 'POST',
            contentType: 'application/json; charset=utf-8',
            traditional: true,
            //JSON.stringify is very important,otherwise the server will consider that the data is not json format then throw 32700 error .
            data: JSON.stringify({jsonrpc: "2.0", id: "102", method: "getUserByUsername",params:myparams}),
            success: function (res, status, xhr) {
                alert(res.result.username);
            },
            error: function (XMLHttpRequest, textStatus) {
                alert(XMLHttpRequest.responseText);
            }
        });
    }
</script>
</html>

