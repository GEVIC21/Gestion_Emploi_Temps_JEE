package com.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.EnseignantDAO;
import com.entities.Enseignant;

/**
 * Servlet implementation class EnseignantServlet
 */
@WebServlet("/")
public class EnseignantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EnseignantDAO enseignantDao;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		enseignantDao = new EnseignantDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		switch (action) {
		case "/new":
			showNewForm(request , response);
			break;

		case "/insert":
			try {
				insertEnseignant(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			break;

		case "/delete":
			try {
				deleteEnseignant(request , response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;

		case "/edit":
			try {
				showEditForm(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "/update":
			try {
				updateEnseignant(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:
			try {
				listEnseignant(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			break;
		}
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher dispatcher = request.getRequestDispatcher("enseignants/enseignant-form.jsp");
		dispatcher.forward(request, response);
	} 
	//INSERT ENSEIGNANTS
	private void insertEnseignant(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
	{
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String tel = request.getParameter("tel");
		String numero = request.getParameter("numero");
		String matricule = request.getParameter("matricule");
		String email = request.getParameter("email");
		
		Enseignant newEnseignant = new Enseignant(nom,prenom,tel,numero,matricule,email);
		
		enseignantDao.insertEnseignant(newEnseignant);
		response.sendRedirect("enseignant_home.jsp");
		
		}
	
	//DELETE ENSEIGNANTS
	private void deleteEnseignant(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
	{
		int id = Integer.parseInt(request.getParameter("id"));
		try{
			enseignantDao.deleteEnseignant(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		response.sendRedirect("List");
	}
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException , IOException, ServletException
	{
		int id = Integer.parseInt(request.getParameter("id"));
		
			Enseignant existingEnseignant;
			try{
				existingEnseignant = enseignantDao.selectEnseignant(id);
				RequestDispatcher dispatcher = request.getRequestDispatcher("enseignants/enseignant-form.jsp");
				request.setAttribute("enseignant", existingEnseignant);
				dispatcher.forward(request, response);
			} catch(Exception e){
				e.printStackTrace();
			}
	}
	//update Enseignant
	private void updateEnseignant(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException
	{
		int id = Integer.parseInt(request.getParameter("id"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String tel = request.getParameter("tel");
		String numero = request.getParameter("numero");
		String matricule = request.getParameter("matricule");
		String email = request.getParameter("email");
		
		Enseignant enseignant = new Enseignant(nom,prenom,tel,numero,matricule,email);
			enseignantDao.updateEnseignant(enseignant);
			response.sendRedirect("list");
	}
	//default section
	private void listEnseignant(HttpServletRequest request, HttpServletResponse response) throws SQLException , ServletException, IOException
	{
		try{
			List<Enseignant> ListEnseignant = enseignantDao.selectAllEnseignants();
			request.setAttribute("ListEnseignant", ListEnseignant);
			RequestDispatcher dispatcher = request.getRequestDispatcher("enseignants/enseignant-list.jsp");
		} catch(Exception e){
			e.printStackTrace();
		}
	}
}
