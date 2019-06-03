package demo02;

import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/json")
public class JSONServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        //打印客户端传过来的数据
        String username = request.getParameter("name");
        String userage = request.getParameter("age");
        System.out.println(username+"---"+userage);

        //返回给客户端的数据
        Student stu1 = new Student();
        Student stu2 = new Student();
        Student stu3 = new Student();
        stu1.setName("张三");
        stu1.setAge(32);
        stu2.setName("李四");
        stu2.setAge(12);
        stu3.setName("王五");
        stu3.setAge(22);

        //实例化 JSONObject 对象
        JSONObject json = new JSONObject();
        json.put("stu1",stu1);
        json.put("stu2",stu2);
        json.put("stu3",stu3);

        //服务器向浏览器输出的流
        out.print(json);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}
