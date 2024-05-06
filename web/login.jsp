<%--
  Created by IntelliJ IDEA.
  User: HUAWEI
  Date: 2024/4/22
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h3 style="text-align: center">Login</h3>
<p style="text-align: center">
    名字:<input type="text" id="name" name="name">
</p>
<p style="text-align: center">
    密码:<input type="password" id="password" name="password">
</p>
<p style="text-align: center">
    <input type="button" onclick="login()" value="登录">
</p>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
    function login(){
        var name=$("#name").val();
        var password=$("#password").val();
        if (name===''||password===''){
            alert("信息不能为空!")
        }else {
            $.ajax({
                url: '/login',
                data: {"name": name, "password": password},
                method:'post',
                success: function (data) {
                    if (data.toString() === "true") {
                        alert("登录成功!")
                        window.location.href = "../list.jsp";
                    } else {
                        alert("登录失败!")
                    }
                }
            })
        }
    }
</script>
</body>
</html>
