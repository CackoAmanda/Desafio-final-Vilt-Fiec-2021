package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String senha = request.getParameter("senha");
		boolean senhaIncorreta = false;
		boolean loginSucesso = false;

		if (username.equals("Geronimo") && senha.equals("123")) {

			loginSucesso = true;
			HttpSession session = request.getSession();
			String destination = "index.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(destination);
			session.setAttribute("loginSucesso", loginSucesso);
			dispatcher.forward(request, response);

		} else {
			senhaIncorreta = true;
			String destination = "login.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(destination);
			request.setAttribute("senhaIncorreta", senhaIncorreta);
			dispatcher.forward(request, response);
		}
	}
}
