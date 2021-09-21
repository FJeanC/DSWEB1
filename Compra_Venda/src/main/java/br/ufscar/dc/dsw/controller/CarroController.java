package br.ufscar.dc.dsw.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.ufscar.dc.dsw.model.Carro;
import br.ufscar.dc.dsw.dao.CarroDAO;
import br.ufscar.dc.dsw.util.Erro;

@WebServlet(urlPatterns = "/lista/*")
public class CarroController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CarroDAO dao;

    @Override
    public void init() {
        dao = new CarroDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String action = request.getPathInfo();
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                default:
                    lista(request, response);
                    break;
            }
        } catch (RuntimeException | IOException | ServletException e) {
            throw new ServletException(e);
        }
            
    }

    private void lista(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Carro> listaCarros = dao.getAllCars();
        request.setAttribute("listaCarros", listaCarros);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/lista.jsp");
        dispatcher.forward(request, response);
    }

}
