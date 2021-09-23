package br.ufscar.dc.dsw.model;

public class Usuario {
    private int idcliente;
    private String email;
    private String senha;
    private String cpf;
    private String nome;
    private String telefone;
    private String sexo;
    private String datanasc;
    private String papel;

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdCliente (int idcliente) {
        this.idcliente = idcliente;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail (String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha (String senha) {
        this.senha = senha;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf (String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome (String nome) {
        this.nome = nome;
    }

    public void setTelefone (String telefone) {
        this.telefone = telefone;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setSexo (String sexo) {
        this.sexo = sexo;
    }

    public String getSexo() {
        return sexo;
    }

    public void setDatanasc (String datanasc) {
        this.datanasc = datanasc;
    }

    public String getDatanasc() {
        return datanasc;
    }

    public void setPapel (String papel) {
        this.papel = papel;
    }

    public String getPapel() {
        return papel;
    }

    public Usuario(int idcliente, String email, String senha, String cpf, String nome, String telefone, String sexo, String datanasc, String papel) {
        this.idcliente = idcliente;
        this.email = email;
        this.senha = senha;
        this.cpf = cpf;
        this.nome = nome;
        this.telefone = telefone;
        this.sexo = sexo;
        this.datanasc = datanasc;
        this.papel = papel;
    }

}