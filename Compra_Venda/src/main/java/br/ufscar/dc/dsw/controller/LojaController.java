package br.ufscar.dc.dsw.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ufscar.dc.dsw.model.Loja;
import br.ufscar.dc.dsw.util.Erro;
import br.ufscar.dc.dsw.model.Carro;
import br.ufscar.dc.dsw.dao.CarroDAO;

@WebServlet(urlPatterns = "/lojas/*")
public class LojaController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private CarroDAO dao;

    @Override
    public void init() {
        dao = new CarroDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Loja loja = (Loja) request.getSession().getAttribute("lojaLogada");
    	Erro erros = new Erro();
    	
    	if (loja == null) {
    		response.sendRedirect(request.getContextPath());
        }
        try {
            listacarrosloja(request, response, loja.getIdloja());
        } catch (RuntimeException | IOException | ServletException  e) {
            throw new ServletException(e);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/lojaindex.jsp");
        dispatcher.forward(request, response);
    }

    private void listacarrosloja(HttpServletRequest request, HttpServletResponse response, int idloja) throws ServletException, IOException {
        List<Carro> listaloja = dao.getCarsLoja(idloja);
        request.setAttribute("listaCarrosLoja", listaloja);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/lojaindex.jsp");
        dispatcher.forward(request, response);
    }
}