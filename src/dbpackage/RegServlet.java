package dbpackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegServlet() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String hdnParam	=	request.getParameter("pagename");
		PrintWriter pw= response.getWriter();
		if(hdnParam.equals("login")){
				String userName	=	request.getParameter("txtUserName");
				String password	=	request.getParameter("txtPassword"); 
				if((userName.equals("admin")) && (password.equals("admin")))
					response.sendRedirect("admin.jsp");
				else if((userName.equals("user")) && (password.equals("user")))
					response.sendRedirect("user.jsp");
				else
				{
				   pw.println("<script type=\"text/javascript\">");
				   pw.println("alert('Username or password incorrect');");
				   pw.println("location='login.jsp';");
				   pw.println("</script>");
				}
				
				}

}
		
	}

