package br.ufscar.dc.dsw.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ufscar.dc.dsw.dao.LojaDAO;
import br.ufscar.dc.dsw.model.Loja;
import br.ufscar.dc.dsw.util.Erro;
import br.ufscar.dc.dsw.model.Usuario;
import br.ufscar.dc.dsw.dao.UsuarioDAO;

@WebServlet(name = "Login", urlPatterns = {"/logins/*", "/logout.jsp"})
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("login.jsp").forward(request, response);
		Erro erros = new Erro();
		if (request.getParameter("bOK") != null) {
			String login = request.getParameter("login");
			String senha = request.getParameter("senha");
			if (login == null || login.isEmpty()) {
				erros.add("Login não informado!");
			}
			if (senha == null || senha.isEmpty()) {
				erros.add("Senha não informada!");
			}
			if (!erros.isExisteErros()) {
				LojaDAO dao = new LojaDAO();
				Loja loja = dao.getByEmail(login);
				UsuarioDAO dao2 = new UsuarioDAO();
				Usuario user = dao2.getByEmail(login);
				

				if(user != null && loja == null) {
					if(user.getSenha().equals(senha))
					{
						request.getSession().setAttribute("usuarioLogado", user);
						if(user.getPapel().equals("ADMIN")){
							response.sendRedirect("admins/");
						}
						else {
							if (request.getParameter("placa") == null || request.getParameter("placa").isEmpty()) {
								response.sendRedirect("usuarios/");
							} else {
								request.getSession().setAttribute("placacomprar", request.getParameter("placa"));
								response.sendRedirect("usuarios/fazproposta?placa=" + request.getParameter("placa") + "/");
							}
						}
						return;
					}
					else{
						erros.add("Senha Inválida!");
					}
				}
				else {
					if(loja != null && user == null) {
						if (loja.getSenhaloja().equals(senha)) {
						request.getSession().setAttribute("lojaLogada", loja);
						response.sendRedirect("lojas/");
						return;
						} else {
							erros.add("Senha inválida!");
						}
					} else {
						erros.add("Usuário não encontrado!");
					}
				}
			}
		}
		request.getSession().invalidate();

		request.setAttribute("mensagens", erros);

		String URL = "/login.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(URL);
		rd.forward(request, response);
	}
}
