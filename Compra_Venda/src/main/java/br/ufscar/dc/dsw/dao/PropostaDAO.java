package br.ufscar.dc.dsw.dao;

import br.ufscar.dc.dsw.model.Usuario;
import br.ufscar.dc.dsw.model.Proposta;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PropostaDAO extends GenericDAO {

    public List<Proposta> read(Usuario usuario) {

        List<Proposta> listaPropostas;

        String sql = "SELECT * from Proposta p WHERE p.clienteproposta = ?";
        try {
            Connection conn = this.getConnection();
            ResultSet resultSet;
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, usuario.getId());
            resultSet = statement.executeQuery();
            listaPropostas = getFromResult(resultSet);

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listaPropostas;
    }

    public List<Proposta> getAll() {

        List<Proposta> listaPropostas;

        String sql = "SELECT * from Proposta";
        try {
            Connection conn = this.getConnection();
            ResultSet resultSet;
            PreparedStatement statement = conn.prepareStatement(sql); // 

            resultSet = statement.executeQuery();
            listaPropostas = getFromResult(resultSet);

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listaPropostas;
    }

    private List<Proposta> getFromResult(ResultSet resultSet){
        List<Proposta> listaPropostas = new ArrayList<>();
        try {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                float valor = resultSet.getFloat("valorproposta");
                String condicao = resultSet.getString("condicoes");
                String status = resultSet.getString("statusproposta");
                String data = resultSet.getString("dataatual");
                int idcliente = resultSet.getInt("clienteproposta");
                String placa = resultSet.getString("placaproposta");

                Proposta proposta = new Proposta(id,valor, condicao, data, status, idcliente, placa);

                listaPropostas.add(proposta);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return listaPropostas;
    }
}