package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import Database.DatabaseConnection;

/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DatabaseConnection dbcon = new DatabaseConnection();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String movieId = request.getParameter("movieId");

		String movieName = request.getParameter("movieName");
		
		String show = request.getParameter("showTime");

		String rate = request.getParameter("rate");
		
		Connection con = (Connection) dbcon.dbconnection();
	
		String query =  "insert into movie (movie_id, movie_name ,showtime ,rate)values('"+movieId+"' ,'"+movieName+"' ,'"+show+"' ,'"+rate+"')";
		
		//System.out.println(query);
		dbcon.getUpdate(query);
	
	System.out.println("Data inserted.");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
