package br.ufscar.dc.dsw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.ufscar.dc.dsw.domain.Carro;

public class CarroDAO extends GenericDAO {

    public void insert(Carro carro) {

        String sql = "INSERT INTO Carro (placa, modelo,chassi, ano, km, descricaocarro, valor,id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, carro.getPlaca());
            statement.setString(2, carro.getModelo());
            statement.setString(3, carro.getChassi());
            statement.setInt(4, carro.getAno());
            statement.setInt(5, carro.getKm());
            statement.setString(6, carro.getDescricao());
            statement.setFloat(7, carro.getValor());
            statement.setInt(8, carro.getId());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Carro> getAll() {

        List<Carro> listaCarro = new ArrayList<>();

        String sql = "SELECT * from Carro u";

        try {
            Connection conn = this.getConnection();
            Statement statement = conn.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String placa = resultSet.getString("placa");
                String modelo = resultSet.getString("modelo");
                String chassi = resultSet.getString("chassi");
                int ano = resultSet.getInt("ano");
                float valor = resultSet.getFloat("valor"); //?
                String descricaocarro = resultSet.getString("descricao");
                int km = resultSet.getInt("km");
                Carro carro = new Carro(placa, modelo,chassi, ano, km, descricaocarro, valor,id);
                listaCarro.add(carro);
                
            }
            

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaCarro;
    }

    public void delete(Carro carro) {
        String sql = "DELETE FROM Carro where placa = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setInt(1, carro.getId());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
        }
    }

    public void update(Carro carro) {
        String sql = "UPDATE Carro SET placa = ?, modelo = ?, chassi = ?, ano = ?, km = ?, descricaocarro = ?, valor = ?, id = ? WHERE placa = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, carro.getPlaca());
            statement.setString(2, carro.getModelo());
            statement.setString(3, carro.getChassi());
            statement.setInt(4, carro.getAno());
            statement.setInt(5, carro.getKm());
            statement.setString(6, carro.getDescricao());
            statement.setFloat(7, carro.getValor());
            statement.setInt(8, carro.getId());
            
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Carro getbyID(Long id) {
        Carro carro = null;

        String sql = "SELECT * from Carro WHERE placa = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {

                int id = resultSet.getInt("id");
                String placa = resultSet.getString("placa");
                String modelo = resultSet.getString("modelo");
                String chassi = resultSet.getString("chassi");
                int ano = resultSet.getInt("ano");
                float valor = resultSet.getFloat("valor"); //?
                String descricaocarro = resultSet.getString("descricao");
                int km = resultSet.getInt("km");

                carro = new Carro(placa, modelo,chassi, ano, km, descricaocarro, valor,id);
            }

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return carro;
    }
}


