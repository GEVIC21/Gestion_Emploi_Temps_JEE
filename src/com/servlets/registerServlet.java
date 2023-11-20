package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entities.User;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
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
		
		String name = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User us = new User();
		us.setName(name);
		us.setEmail(email);
		us.setPasseword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean f = dao.userRegister(us);
		
		if(true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Vous etes Inscris avec Success");
			response.sendRedirect("register.jsp");
			
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Erreur!!! Echec du serveur");
			response.sendRedirect("register.jsp");
		}
		
	}

}
