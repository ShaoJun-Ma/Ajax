<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2019/6/2
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        function testJSON() {
            $.ajax({
                url:"../json",
                type:"get",
                data:{"name":"msj","age":18},
                dataType:'json', //返回的数据转为json对象
                success:function(result){
                    //遍历每个对象
                    $.each(result,function () {
                        console.log(this);
                    })

                }
            })
        }
    </script>
</head>
<body>
    <input type="submit" value="测试json" onclick="testJSON()">
</body>
</html>
