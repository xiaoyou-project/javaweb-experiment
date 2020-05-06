import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Verify")
public class Verify extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        //获取传递过来的参数
        String number=req.getParameter("number");
        try {
            //字符串转double
            double n=Double.parseDouble(number);
            if(n>6000 || n<-6000){
                //重定向
                resp.sendRedirect("experiment8.jsp");
            }else{
                //参数转发
                RequestDispatcher dispatcher = req.getRequestDispatcher("ShowMessage");
                dispatcher.forward(req,resp);
            }
        }catch (NumberFormatException e){
            resp.sendRedirect("experiment8.jsp");
        }
    }
}
