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
    <script type="text/javascript">
        function  register() {
            //取input里面的值进行比较
            var mob = document.getElementById("mobile").value;
            var tip = document.getElementById("tip");

            //通过Ajax异步方式请求服务端
            xmlHttpRequest = new XMLHttpRequest();

            ///设置xmlHttpRequest的回调函数
            //callBack后面 不用加括号，这表示引用
            xmlHttpRequest.onreadystatechange = callBack;

            xmlHttpRequest.open("post","../mobileServlet?mobile="+mob,true);//当前路径是在/pages/index.jsp,".."表示回到上一级

            xmlHttpRequest.send(null);//key=value
        }
        //定义回调函数(接收服务端的返回值)
        function callBack() {
            if(xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
                //接收服务端返回的数据
                var data = xmlHttpRequest.responseText;
                if(data == "true"){
                    // alert("此号码已经存在，注册失败");
                    tip.innerText = "此号码已经存在，注册失败";
                }else{
                    // alert("注册成功！");
                    tip.innerText = "注册成功！";
                }
            }
        }
    </script>
</head>
<body>
<%--以前通过form表单进行同步刷新--%>
    手机：<input type="text" id="mobile" placeholder="手机号码"><a id="tip"></a><br>
    <input type="submit" value="注册" onclick="register()">

</body>
</html>
