package CustServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import Database.DatabaseConnection;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/registrationServlet")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DatabaseConnection dbcon = new DatabaseConnection();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registrationServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
        String customerName = request.getParameter("name");
		
		String email = request.getParameter("email");

		String uname = request.getParameter("uname");
		
		String psw = request.getParameter("psw");
		
		Connection con = (Connection) dbcon.dbconnection();
		
		String query =  "insert into customer (customer_name, email, username ,psw )" +
				"values('"+customerName+"' , '"+email+"' ,'"+uname+"' ,'"+psw+"' )";
		dbcon.getUpdate(query);
		
		System.out.println("Customer Registered.");
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
