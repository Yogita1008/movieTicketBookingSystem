package Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import Database.DatabaseConnection;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DatabaseConnection dbcon = new DatabaseConnection();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String movieId = request.getParameter("movieId");

	String movieName = request.getParameter("movieName");
	
	String show = request.getParameter("show");

	String rate = request.getParameter("rate");
	
	Connection con = (Connection) dbcon.dbconnection();

	try {
 System.out.println(movieId + " " + movieName + " " + show + " " + rate );
 
 /*String query =  "update movie set movie_name='"+movieName+"' , rate='"+rate+"' , showtime='"+show+"' where movie_id='"+movieId+"'";
 System.out.println(query);*/
 
 String query =  "update movie set movie_name=? , rate= ? , showtime=? where movie_id = ?";
 PreparedStatement stmt;

	stmt = (PreparedStatement) con.prepareStatement(query);

 stmt.setString(1, movieName);
 stmt.setString(2, rate);
 stmt.setString(3, show);
 stmt.setString(4, movieId);
 int i=stmt.executeUpdate();  
 
 //dbcon.getUpdate(query);
 
 System.out.println("Data Updated.");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
