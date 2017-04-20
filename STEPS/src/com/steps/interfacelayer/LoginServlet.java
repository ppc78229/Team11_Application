package com.steps.interfacelayer;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.steps.persistencelayer.PersistenceLayer;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PersistenceLayer persistenceLayer;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
        
        persistenceLayer = new PersistenceLayer();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String privilege = request.getParameter("userIs");
		String email = request.getParameter("inputEmail");
		String givenPassword = request.getParameter("inputPassword");
		String databasePassword = "";
		
		ResultSet results = persistenceLayer.getUserPassword(email, privilege);
		try {
			while(results.next()) {
				databasePassword = results.getString("password");
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		if(givenPassword.equals(databasePassword)) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			String accountPath = privilege + "Account.html";
			request.getRequestDispatcher(accountPath).forward(request, response);
		} else {
			//failure
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
