package com.servlets;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entities.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe"); 

        if (email != null && password != null && !email.isEmpty() && !password.isEmpty()) {
        	  // Hash the entered password before comparing
            String hashedPassword = UserDAO.passwordHash(password);
            UserDAO dao = new UserDAO(DBConnect.getConnection());

            try {
                User user = dao.getLogin(email, hashedPassword, rememberMe);

                if (user != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("loginSuccessMessage", "Login successful! Welcome, " + user.getName() + ".");
                    
                    // Check if "Remember Me" is checked
                    if (rememberMe != null && rememberMe.equals("on")) {
                        // Generate a remember token
                        String rememberToken = UUID.randomUUID().toString();
                        
                        // Store the token in the user object
                        user.setRememberToken(rememberToken);
                        
                        // Update the database with the remember token
                        dao.updateRememberToken(user.getId(), rememberToken);
                        // Create a cookie for the user's email
                        Cookie emailCookie = new Cookie("userEmail", email);
                        emailCookie.setMaxAge(30 * 24 * 60 * 60); // Cookie expires in 30 days
                        response.addCookie(emailCookie);
                    }  
                    
                    session.setAttribute("user-ob", user);
                    session.setAttribute("user", user);
                    response.sendRedirect("home.jsp");
                } else {
                    // Set attributes for SweetAlert
                    request.setAttribute("loginErrorType", "incorrectCredentials");
                    request.setAttribute("loginError", "Incorrect email or password. Please try again.");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
                // Set attributes for SweetAlert
                request.setAttribute("loginErrorType", "databaseError");
                request.setAttribute("loginError", "Database error. Please try again later.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            // Set attributes for SweetAlert
            request.setAttribute("loginErrorType", "invalidInput");
            request.setAttribute("loginError", "Invalid input. Please enter both email and password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
