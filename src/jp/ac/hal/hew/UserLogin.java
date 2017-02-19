package jp.ac.hal.hew;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		boolean result = false;
		
		try {
			String mail = String.valueOf(request.getAttribute("mail") );
			String passwd = String.valueOf(request.getAttribute("passwd") );
			String safetyPasswd = PasswordUtil.getSafetyPassword(passwd, "");
			
			UserDAO dao = new UserDAO();
			User user = dao.selectByAddressAndPasswd(mail, safetyPasswd);
			if(user != null) {
				result = true;
			}
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = null;
		if(result == true) {
			dispatcher = request.getRequestDispatcher("index.html");
		} else {
			dispatcher = request.getRequestDispatcher("login.html");
		}
		dispatcher.forward(request, response);
	}

}
