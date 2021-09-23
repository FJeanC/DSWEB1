package br.ufscar.dc.dsw.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ufscar.dc.dsw.model.Usuario;
import br.ufscar.dc.dsw.model.Proposta;
import br.ufscar.dc.dsw.dao.PropostaDAO;
import br.ufscar.dc.dsw.util.Erro;

@WebServlet(urlPatterns = "/usuarios/*")
public class UsuarioController extends HttpServlet {

    private static final long serialVersionUID = 1L;

	private PropostaDAO dao;
	@Override
    public void init() {
        dao = new PropostaDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
    	Erro erros = new Erro();

		String action = request.getPathInfo();
        if (action == null) {
            action = "";
        }
    	if (usuario == null) {
    		response.sendRedirect(request.getContextPath());
    	} else if (usuario.getPapel().equals("CLIENTE")) {
			try {
				switch (action) {
					case "/fazproposta":
						fazproposta(request, response);
						break;
					case "/insereproposta":
						insereproposta(request, response);
						break;
					case "/lista":
						listaproposta(request, response);
						break;
					default:
						RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/usuario/userindex.jsp");
						dispatcher.forward(request, response);
				} 
			} catch (RuntimeException | IOException | ServletException  e) {
				throw new ServletException(e);
			}
    	} else {
    		erros.add("Acesso não autorizado!");
    		erros.add("Apenas Papel [USER] tem acesso a essa página");
    		request.setAttribute("mensagens", erros);
    		RequestDispatcher rd = request.getRequestDispatcher("/noAuth.jsp");
    		rd.forward(request, response);
    	}    	
    }

	private void fazproposta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
		request.setAttribute("usuario", usuario);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/usuario/criaproposta.jsp");
        dispatcher.forward(request, response);
	}

	private void insereproposta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Float valor = Float.parseFloat(request.getParameter("valorproposta"));
		String condicao = request.getParameter("condicoes");
		String status = request.getParameter("statusproposta");
		String data = request.getParameter("dataatual");
		Integer idcliente = Integer.parseInt(request.getParameter("clienteproposta"));
		String placa = request.getParameter("placaproposta");

		Proposta proposta = new Proposta(0, valor, condicao, data, status, idcliente, placa);
		dao.inserePropostaDAO(proposta);

		response.sendRedirect("default");
	}

	private void listaproposta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
		List<Proposta> listapropostas = dao.listaProposta(usuario);
		request.setAttribute("listaProposta", listapropostas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/usuario/listaproposta.jsp");
		dispatcher.forward(request, response);
	}
}