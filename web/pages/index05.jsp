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
        function  register() {
            var $mob = $("#mobile").val();
            // console.log($mob);
            var $tip = $("#tip");

            $("#tip").load(
                "../mobileServlet02",
                "mobile="+$mob
            );

        }
    </script>
</head>
<body>
<%--以前通过form表单进行同步刷新--%>
    手机：<input type="text" id="mobile" placeholder="手机号码"><a id="tip"></a><br>
    <input type="submit" value="注册" onclick="register()">

</body>
</html>
