package br.ufscar.dc.dsw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.ufscar.dc.dsw.model.Carro;

public class CarroDAO extends GenericDAO {

    public void insertCar(Carro carro) {

        String sql = "INSERT INTO Carro (placa, modelo,chassi, ano, km, descricaocarro, valor, lojacarro) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

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
            statement.setInt(8, carro.getLojacarro());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Carro> getAllCars() {

        List<Carro> listaCarro = new ArrayList<>();

        String sql = "SELECT * from Carro";

        try {
            Connection conn = this.getConnection();
            Statement statement = conn.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String placa = resultSet.getString("placa");
                String modelo = resultSet.getString("modelo");
                String chassi = resultSet.getString("chassi");
                int ano = resultSet.getInt("ano");
                int km = resultSet.getInt("km");
                String descricaocarro = resultSet.getString("descricaocarro");
                float valor = resultSet.getFloat("valor");
                int idloja = resultSet.getInt("lojacarro");
                Carro carro = new Carro(placa, modelo,chassi, ano, km, descricaocarro, valor,idloja);
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

    public void deleteCar(Carro carro) {
        String sql = "DELETE FROM Carro where placa = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, carro.getPlaca());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
        }
    }

    public void updateCar(Carro carro) {
        String sql = "UPDATE Carro SET placa = ?, modelo = ?, chassi = ?, ano = ?, km = ?, descricaocarro = ?, valor = ?, lojacarro = ? WHERE placa = ?";

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
            statement.setInt(8, carro.getLojacarro());

            //PRECISO DISSO?
            statement.setString(9, carro.getPlaca());
            
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Carro getbyPlaca(String placa) {

        Carro carro = null;
        String sql = "SELECT * from Carro WHERE placa = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, placa);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {

                String placa_carro = resultSet.getString("placa");
                String modelo = resultSet.getString("modelo");
                String chassi = resultSet.getString("chassi");
                int ano = resultSet.getInt("ano");
                int km = resultSet.getInt("km");
                String descricaocarro = resultSet.getString("descricaocarro");
                float valor = resultSet.getFloat("valor");
                int idloja = resultSet.getInt("lojacarro");

                carro = new Carro(placa_carro, modelo,chassi, ano, km, descricaocarro, valor, idloja);
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


