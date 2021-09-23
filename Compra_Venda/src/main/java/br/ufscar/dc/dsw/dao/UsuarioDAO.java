package br.ufscar.dc.dsw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.ufscar.dc.dsw.model.Usuario;

public class UsuarioDAO extends GenericDAO {

    public void insert(Usuario usuario) {

        String sql = "INSERT INTO Usuario (email, senha, cpf, nome, telefone, sexo, datanasc, papel) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, usuario.getEmail());
            statement.setString(2, usuario.getSenha());
            statement.setString(3, usuario.getCpf());
            statement.setString(4, usuario.getNome());
            statement.setString(5, usuario.getTelefone());
            statement.setString(6, usuario.getSexo());
            statement.setString(7, usuario.getDatanasc());
            statement.setString(8, usuario.getPapel());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Usuario> getAll() {

        List<Usuario> listaUsuarios = new ArrayList<>();

        String sql = "SELECT * from Usuario u";

        try {
            Connection conn = this.getConnection();
            Statement statement = conn.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("idcliente");
                String email = resultSet.getString("email");
                String senha = resultSet.getString("senha");
                String cpf = resultSet.getString("cpf");
                String nome = resultSet.getString("nome");
                String telefone = resultSet.getString("telefone");
                String sexo = resultSet.getString("sexo");
                String datanasc = resultSet.getString("datanasc");
                String papel = resultSet.getString("papel");
                Usuario usuario = new Usuario(id, email, senha, cpf, nome, telefone, sexo, datanasc, papel);
                listaUsuarios.add(usuario);
            }

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaUsuarios;
    }

    public void delete(int id) {
        String sql = "DELETE FROM Usuario WHERE idcliente = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setInt(1, id);
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(Usuario usuario) {
        String sql = "UPDATE Usuario SET email = ?, senha = ?, cpf = ?, nome = ?, telefone = ?, sexo = ?, datanasc = ?, papel = ? WHERE idcliente = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, usuario.getEmail());
            statement.setString(2, usuario.getSenha());
            statement.setString(3, usuario.getCpf());
            statement.setString(4, usuario.getNome());
            statement.setString(5, usuario.getTelefone());
            statement.setString(6, usuario.getSexo());
            statement.setString(7, usuario.getDatanasc());
            statement.setString(8, usuario.getPapel());
            statement.setInt(9, usuario.getIdcliente());
            statement.executeUpdate();

            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Usuario getByEmail(String email) {
        Usuario usuario = null;

        String sql = "SELECT * from Usuario u WHERE u.email = ?";

        try {
            Connection conn = this.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int idresult = resultSet.getInt("idcliente");
                String emailresult = resultSet.getString("email");
                String senha = resultSet.getString("senha");
                String cpf = resultSet.getString("cpf");
                String nome = resultSet.getString("nome");
                String telefone = resultSet.getString("telefone");
                String sexo = resultSet.getString("sexo");
                String datanasc = resultSet.getString("datanasc");
                String papel = resultSet.getString("papel");

                usuario = new Usuario(idresult, emailresult, senha, cpf, nome, telefone, sexo, datanasc, papel);
            }

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return usuario;
    }
}