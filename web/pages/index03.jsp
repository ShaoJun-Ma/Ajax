<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2019/6/2
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%--get请求--%>
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
            $.ajax({
                url:"../mobileServlet",
                type:"post",
                data:"mobile="+$mob,
                success:function(result,testStatus){
                    //请求成功
                    if(result == "true"){
                        $tip.html("此号码已经被注册，注册失败");
                    }else{
                        $tip.html( "注册成功！！");
                    }
                },
                error:function(xhr,errorMessage,e){
                    //请求失败
                    alert("出现异常....");
                 }
            })
        }
    </script>
</head>
<body>
<%--以前通过form表单进行同步刷新--%>
    手机：<input type="text" id="mobile" placeholder="手机号码"><a id="tip"></a><br>
    <input type="submit" value="注册" onclick="register()">

</body>
</html>
