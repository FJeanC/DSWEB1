package br.ufscar.dc.dsw.dao;

import br.ufscar.dc.dsw.model.Loja;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LojaDAO extends GenericDAO{

    public List<Loja> ReadLojas() {
        String sql = "SELECT * FROM Loja";

        List<Loja> listaLojas = new ArrayList<>();

        try {
            Connection conn = this.getConnection();
            ResultSet resultSet;
            PreparedStatement statement = conn.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("idloja");
                String email = resultSet.getString("emailloja");
                String senha = resultSet.getString("senhaloja");
                String cnpj = resultSet.getString("cnpj");
                String nome = resultSet.getString("nomeloja");
                String descricao = resultSet.getString("descricao");
                Loja lojas = new Loja(id, email, senha,cnpj, nome, descricao);
                listaLojas.add(lojas);
            }
            resultSet.close();
            statement.close();
            conn.close();
        } catch(SQLException e){
            throw new RuntimeException(e);
        }
        return listaLojas;
    }

    public void InsereLoja(Loja loja){
        try {
            Connection conn = this.getConnection();
            String sql = "INSERT INTO Loja(idloja,emailloja,senhaloja,cnpj,nomeloja,descricao) VALUES(?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setInt(1, loja.getIdloja());
            statement.setString(2, loja.getEmailloja());
            statement.setString(3, loja.getSenhaloja());
            statement.setString(4, loja.getCnpj());
            statement.setString(5, loja.getNomeloja());
            statement.setString(6, loja.getDescricao());
            statement.executeUpdate();
            statement.close();

            conn.close();
        } catch(SQLException e){
            throw new RuntimeException(e);
        }
    }

     public void deletaLoja(int idloja){
        try {
            Connection conn = this.getConnection();
            String sql = "DELETE FROM Loja WHERE idloja = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, idloja);
            statement.executeUpdate();
            statement.close();
            conn.close();
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }

    public void updateLoja(Loja loja){
        try {
            Connection conn = this.getConnection();
            String sql = "UPDATE Loja SET emailloja = ?, senhaloja = ?, cnpj = ?, nomeloja = ?, descricao = ? WHERE idloja = ?";

            PreparedStatement statement = conn.prepareStatement(sql);
            
            statement.setString(1, loja.getEmailloja());
            statement.setString(2, loja.getSenhaloja());            
            statement.setString(3, loja.getCnpj());
            statement.setString(4, loja.getNomeloja());
            statement.setString(5, loja.getDescricao());
            statement.setInt(6, loja.getIdloja());

            statement.executeUpdate();
            statement.close();
            conn.close();
        } catch(SQLException e){
            throw new RuntimeException(e);
        }
    }

    public Loja getByEmail(String email) {
        Loja loja = null;

        String sql = "SELECT * from Loja u WHERE u.emailloja = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int idloja = resultSet.getInt("idloja");
                String emailresult = resultSet.getString("emailloja");
                String senha = resultSet.getString("senhaloja");
                String cnpj = resultSet.getString("cnpj");
                String nome = resultSet.getString("nomeloja");
                String descricao = resultSet.getString("descricao");

                loja = new Loja(idloja, emailresult, senha, cnpj, nome, descricao);
            }

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return loja;
    }


}