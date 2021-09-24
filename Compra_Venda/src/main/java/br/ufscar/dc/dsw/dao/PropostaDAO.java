package br.ufscar.dc.dsw.dao;

import br.ufscar.dc.dsw.model.Usuario;
import br.ufscar.dc.dsw.model.Proposta;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PropostaDAO extends GenericDAO {

    public List<Proposta> listaProposta(Usuario usuario) {

        List<Proposta> listaPropostas;

        String sql = "SELECT * from Proposta p WHERE p.clienteproposta = ?";
        try {
            Connection conn = this.getConnection();
            ResultSet resultSet;
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, usuario.getIdcliente());
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

    public void inserePropostaDAO(Proposta proposta) {
        String sql = "INSERT INTO Proposta (valorproposta, condicoes, dataatual, statusproposta, clienteproposta, placaproposta) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setFloat(1, proposta.getValorproposta());
            statement.setString(2, proposta.getCondicoes());
            statement.setString(3, proposta.getDataatual());
            statement.setString(4, proposta.getStatusproposta());
            statement.setInt(5, proposta.getClienteProposta());
            statement.setString(6, proposta.getPlacaproposta());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void updateProposta(int idproposta, Boolean aceita) {
        String sql = "UPDATE Proposta SET statusproposta = ? WHERE id = ?";
        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            if (aceita) {
                statement.setString(1, "ACEITO");
            } else {
                statement.setString(1, "NAO ACEITO");
            }
            statement.setInt(2, idproposta);
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
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

    private List<Proposta> getFromResult(ResultSet resultSet) {
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