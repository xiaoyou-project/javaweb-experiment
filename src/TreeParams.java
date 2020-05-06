import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TreeParams")
public class TreeParams extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        resp.setContentType("text/html");
        //设置逻辑实现
        PrintWriter out = resp.getWriter();
        out.println("<h1>getPage</h1>");
    }

    //这里实现post请求
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<html><body>结果为:<br>");
        out.println("参数1:"+req.getParameter("n1")+"<br>");
        out.println("参数2:"+req.getParameter("n2")+"<br>");
        out.println("参数3:"+req.getParameter("n3")+"<br>");
        out.println("</body></html>");
        out.close();
    }
}
