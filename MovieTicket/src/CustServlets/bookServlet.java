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
 * Servlet implementation class bookServlet
 */
@WebServlet("/bookServlet")
public class bookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DatabaseConnection dbcon = new DatabaseConnection();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String customerName = request.getParameter("name");
		
		String movieId = request.getParameter("movieId");

		String movieName = request.getParameter("movieName");
		
		String show = request.getParameter("show");

		String rate = request.getParameter("rate").trim();
		
		String bal = request.getParameter("balance");
		
		int movie_rate = Integer.parseInt(rate);
		
		int cus_bal = Integer.parseInt(bal);
		
		
		Connection con = (Connection) dbcon.dbconnection();
	
		int new_bal = cus_bal - movie_rate ;
		
		String query =  "insert into book_tickets (customer_name, movie_id, movie_name ,show_time ,rate)" +
				"values('"+customerName+"' , '"+movieId+"' ,'"+movieName+"' ,'"+show+"' ,'"+rate+"')";
		
		String query1= "update customer set acc_balance = '"+new_bal+"' where customer_name='"+customerName+"' ";
		
		//System.out.println(query);
		dbcon.getUpdate(query);
	    dbcon.getUpdate(query1);
	System.out.println("Ticket Booked.");
	
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
