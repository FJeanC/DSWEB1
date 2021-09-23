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
import br.ufscar.dc.dsw.util.Erro;
import java.util.List;

@WebServlet(urlPatterns = "/admins/*")
public class AdminController extends HttpServlet {

    private static final long serialVersionUID = 1L;

	private UsuarioDAO dao;
	@Override
    public void init() {
        dao = new UsuarioDAO();
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

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}