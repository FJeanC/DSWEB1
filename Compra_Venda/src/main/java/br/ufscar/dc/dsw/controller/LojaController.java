package br.ufscar.dc.dsw.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ufscar.dc.dsw.model.Loja;
//import br.ufscar.dc.dsw.util.Erro;
import br.ufscar.dc.dsw.model.Carro;
import br.ufscar.dc.dsw.model.Proposta;
import br.ufscar.dc.dsw.dao.CarroDAO;
import br.ufscar.dc.dsw.dao.PropostaDAO;

@WebServlet(urlPatterns = "/lojas/*")
public class LojaController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private CarroDAO dao;
    private PropostaDAO dao2;

    @Override
    public void init() {
        dao = new CarroDAO();
        dao2 = new PropostaDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Loja loja = (Loja) request.getSession().getAttribute("lojaLogada");
    	//Erro erros = new Erro();
    	
    	if (loja == null) {
    		response.sendRedirect(request.getContextPath());
        }
        String action = request.getPathInfo();
        if (action == null) {
            action = "";
        }
        try {
            switch(action) {
                case "/criar":
                    apresentaFormCriar(request, response, loja.getEmailloja());
                    break;
                case "/editar":
                    apresentaFormEditar(request, response, loja.getEmailloja());
                    break;
                case "/insere":
                    insere(request, response);
                    break;
                case "/update":
                    updatecarro(request, response);
                    break;
                case "/remove":
                    remove(request, response);
                    break;
                case "/propostaloja":
                    listapropostaloja(request, response, loja.getEmailloja());
                    break;
                case "/aceitaproposta":
                    alteraproposta(request, response, true);
                    break;
                case "/recusaproposta":
                    alteraproposta(request, response, false);
                    break;
                default:
                    listacarrosloja(request, response, loja.getEmailloja());
                    break;
            }
        } catch (RuntimeException | IOException | ServletException  e) {
            throw new ServletException(e);
        }
    }

    private void listacarrosloja(HttpServletRequest request, HttpServletResponse response, String idloja) throws ServletException, IOException {
        List<Carro> listaloja = dao.getCarsLoja(idloja);
        request.setAttribute("listaCarrosLoja", listaloja);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/lojaindex.jsp");
        dispatcher.forward(request, response);
    }

    private void apresentaFormCriar(HttpServletRequest request, HttpServletResponse response, String idloja) throws ServletException, IOException {
        request.setAttribute("emailLoja", idloja);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/criacarro.jsp");
        dispatcher.forward(request, response);
    }

    private void insere(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String placa = request.getParameter("placa");
        String modelo = request.getParameter("modelo");
        String chassi = request.getParameter("chassi");
        Integer ano = Integer.parseInt(request.getParameter("ano"));
        Integer km = Integer.parseInt(request.getParameter("km"));
        String descricaocarro = request.getParameter("descricaocarro");
        Float valor = Float.parseFloat(request.getParameter("valor"));
        String idloja = request.getParameter("lojacarro");

        Carro carro = new Carro(placa, modelo, chassi, ano, km, descricaocarro, valor, idloja);
        dao.insertCar(carro);
        response.sendRedirect("default");
    }

    private void apresentaFormEditar(HttpServletRequest request, HttpServletResponse response, String idloja) throws ServletException, IOException {
        request.setAttribute("emailLoja", idloja);
        String placa = request.getParameter("placa");
        Carro carro = dao.getbyPlaca(placa);
        request.setAttribute("carro", carro);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/criacarro.jsp");
        dispatcher.forward(request, response);
    }

    private void updatecarro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String placa = request.getParameter("placa");
        String modelo = request.getParameter("modelo");
        String chassi = request.getParameter("chassi");
        Integer ano = Integer.parseInt(request.getParameter("ano"));
        Integer km = Integer.parseInt(request.getParameter("km"));
        String descricaocarro = request.getParameter("descricaocarro");
        Float valor = Float.parseFloat(request.getParameter("valor"));
        String idloja = request.getParameter("lojacarro");

        Carro carro = new Carro(placa, modelo, chassi, ano, km, descricaocarro, valor, idloja);
        dao.updateCar(carro);
        response.sendRedirect("default");
    }

    private void remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String placa = request.getParameter("placa");
        dao.deleteCar(placa);
        response.sendRedirect("default");
    }

    private void listapropostaloja(HttpServletRequest request, HttpServletResponse response, String emailloja) throws ServletException, IOException {
        List<Proposta> todaspropostas = dao2.getAll();
        List<Carro> carrosloja = dao.getCarsLoja(emailloja);
        List<Proposta> propostafiltrado = new ArrayList<>();
        for (int i=0; i<todaspropostas.size(); i++) {
            Proposta iterador = todaspropostas.get(i);
            for (int j=0; j<carrosloja.size(); j++) {
                Carro carroiterador = carrosloja.get(j);
                if (iterador.getPlacaproposta().equals(carroiterador.getPlaca())) {
                    propostafiltrado.add(iterador);
                }
            }
        }
        request.setAttribute("listaProposta", propostafiltrado);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/logado/loja/listapropostaloja.jsp");
        dispatcher.forward(request, response);
    }

    private void alteraproposta(HttpServletRequest request, HttpServletResponse response, Boolean aceita) throws ServletException, IOException {
        Integer idproposta = Integer.parseInt(request.getParameter("id"));
        dao2.updateProposta(idproposta, aceita);
        response.sendRedirect("default");
    }
}