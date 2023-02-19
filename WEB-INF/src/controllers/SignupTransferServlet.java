import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

@WebServlet("/send_signup_page.do")

public class SignupTransferServlet extends HttpServlet{
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
        // Session start ... 
        HttpSession session = request.getSession();

        System.out.println("Request aa chuki hai ");

        request.getRequestDispatcher("signup.html").forward(request,response);

    }
}