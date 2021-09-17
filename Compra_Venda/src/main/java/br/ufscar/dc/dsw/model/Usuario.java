package br.ufscar.dc.dsw.model;

public class Usuario {
    private int id;
    private String email;
    private String senha;
    private String cpf;
    private String nome;
    private String telefone;
    private String sexo;
    private String datanasc;
    private String papel;

    public int getId() {
        return id;
    }

    public void setCodigo (int codigo) {
        this.id = codigo;
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

    public Usuario(int id, String email, String senha, String cpf, String nome, String telefone, String sexo, String datanasc, String papel) {
        this.id = id;
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