<%--
  Created by IntelliJ IDEA.
  User: HUAWEI
  Date: 2024/4/22
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list</title>
</head>
<body>
<h3 style="text-align: center">书籍列表</h3>
<table style="margin:0 auto">
    <tr>
        <td>id</td>
        <td>书名</td>
        <td>类型</td>
    </tr>
    <tbody id="text">

    </tbody>
</table>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
    $(function (){
        $.ajax({
            url:'/list',
            method:'get',
            success:function (data){
                var html="";
                for (var i=0;i<data.length;i++){
                    html+="<tr>"+
                        "<td>"+data[i].id+"</id>"+
                        "<td>"+data[i].bookName+"</td>"+
                        "<td>"+data[i].bookType+"</td>"+
                        "</tr>"
                }
                $("#text").html(html);
            }
        })
    })
</script>
</body>
</html>
