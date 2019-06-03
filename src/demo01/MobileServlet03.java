package demo01;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/mobileServlet03")
public class MobileServlet03 extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String mobile = request.getParameter("mobile");
        PrintWriter out = response.getWriter();
        if("123".equals(mobile)){
            //如果客户端是getJSON()，则需要以json格式{"key":"value"}返回
            out.write("{\"msg\":\"true\"}");
        }else{
            out.write("{\"msg\":\"false\"}");
        }
        out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}
