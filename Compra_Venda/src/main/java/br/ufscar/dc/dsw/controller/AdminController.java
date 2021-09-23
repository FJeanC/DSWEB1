package br.ufscar.dc.dsw.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ufscar.dc.dsw.model.Usuario;
import br.ufscar.dc.dsw.dao.UsuarioDAO;
import br.ufscar.dc.dsw.model.Loja;
import br.ufscar.dc.dsw.dao.LojaDAO;
import br.ufscar.dc.dsw.util.Erro;
import java.util.List;

@WebServlet(urlPatterns = "/admins/*")
public class AdminController extends HttpServlet {

    private static final long serialVersionUID = 1L;

	private UsuarioDAO dao;
	private LojaDAO dao2;
	@Override
    public void init() {
        dao = new UsuarioDAO();
		dao2 = new LojaDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
    	Erro erros = new Erro();
    	
    	if (usuario == null) {
    		response.sendRedirect(request.getContextPath());
    	} else if (usuario.getPapel().equals("ADMIN")) {
			String action = request.getPathInfo();
			switch(action){
				//Coisas user
				case "/listar":
					lista_usuarios(request,response);
					break;
				case "/edicao":
					apresentaFormEdicao(request, response);
					break;
				case "/cadastro":
					apresentaFormCadastro(request,response);
					break;
				case "/insere":
					insere(request, response);
					break;
				case "/atualizacao":
					updateuser(request, response);
					break;
				case "/remocao":
					remove(request, response);
					break;
				//Coisas loja
				case "/listarlojas":
					lista_lojas(request, response);
					break;
				case "/cadastrolojas":
					apresentaFormCadastroLoja(request, response);
					break;
				case "/edicaoloja":
					apresentaFormEdicaoLoja(request, response);
					break;
				case "/insereloja":
					insereloja(request, response);
					break;
				case "/atualizacaoloja":
					updateloja(request, response);
					break;
				case "/remocaoloja":
					removeloja(request, response);
					break;
				default:
					RequestDispatcher dps = request.getRequestDispatcher("/logado/admin/adminindex.jsp");
            		dps.forward(request, response);
					break;
			}
    		
    	} else {
    		erros.add("Acesso não autorizado!");
    		erros.add("Apenas Papel [ADMIN] tem acesso a essa página");
    		request.setAttribute("mensagens", erros);
    		RequestDispatcher rd = request.getRequestDispatcher("/noAuth.jsp");
    		rd.forward(request, response);
    	}
    }

	 private void lista_usuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> listaUsuarios = dao.getAll();
        request.setAttribute("listaUsuarios", listaUsuarios);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/admin/listar.jsp");
		dispatcher.forward(request, response);
    }

	private void apresentaFormEdicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (request.getParameter("email"));
        Usuario user = dao.getByEmail(id);
        request.setAttribute("usuario", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/usuario/cadastro.jsp");
        dispatcher.forward(request, response);
    }

	 private void apresentaFormCadastro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/usuario/cadastro.jsp");
        dispatcher.forward(request, response);
    }

	private void insere(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int id_user = 0;
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String CPF = request.getParameter("cpf");
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String sexo = request.getParameter("sexo");
        String nascimento = request.getParameter("datanasc");
        String papel = request.getParameter("papel");
        Usuario usuario = new Usuario(id_user,email, senha, CPF, nome, telefone, sexo, nascimento, papel);

        dao.insert(usuario);
        response.sendRedirect("default");
    }

	private void updateuser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer id_user = Integer.parseInt(request.getParameter("idcliente"));
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String CPF = request.getParameter("cpf");
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String sexo = request.getParameter("sexo");
        String nascimento = request.getParameter("datanasc");
        String papel = request.getParameter("papel");
		Usuario usuario = new Usuario(id_user,email, senha, CPF, nome, telefone, sexo, nascimento, papel);

		dao.update(usuario);
		response.sendRedirect("default");
	}

	private void remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer iduser = Integer.parseInt(request.getParameter("idcliente"));
        dao.delete(iduser);
        response.sendRedirect("default");
    }

	private void lista_lojas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Loja> listaLojas = dao2.ReadLojas();
        request.setAttribute("listaLojas", listaLojas);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/admin/listarlojas.jsp");
		dispatcher.forward(request, response);
	}

	private void apresentaFormEdicaoLoja(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailloja = (request.getParameter("emailloja"));
        Loja loja = dao2.getByEmail(emailloja);
        request.setAttribute("loja", loja);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/cadastroloja.jsp");
        dispatcher.forward(request, response);
    }

	private void apresentaFormCadastroLoja(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/cadastroloja.jsp");
        dispatcher.forward(request, response);
    }

	private void insereloja(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String emailresult = request.getParameter("emailloja");
		String senhaloja = request.getParameter("senhaloja");
		String cnpj = request.getParameter("cnpj");
		String nomeloja = request.getParameter("nomeloja");
		String descricao = request.getParameter("descricao");
		Loja loja = new Loja(0, emailresult, senhaloja, cnpj, nomeloja, descricao);
		dao2.InsereLoja(loja);
		response.sendRedirect("default");
	}

	private void updateloja(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer idloja = Integer.parseInt(request.getParameter("idloja"));
		String emailresult = request.getParameter("emailloja");
		String senhaloja = request.getParameter("senhaloja");
		String cnpj = request.getParameter("cnpj");
		String nomeloja = request.getParameter("nomeloja");
		String descricao = request.getParameter("descricao");
		Loja loja = new Loja(idloja, emailresult, senhaloja, cnpj, nomeloja, descricao);
		dao2.updateLoja(loja);
		response.sendRedirect("default");
	}

	private void removeloja(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer idloja = Integer.parseInt(request.getParameter("idloja"));
		dao2.deletaLoja(idloja);
		response.sendRedirect("default");
	}
}