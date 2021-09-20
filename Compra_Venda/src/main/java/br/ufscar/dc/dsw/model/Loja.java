package br.ufscar.dc.dsw.model;

public class Loja {
    private int idloja;
    private String emailloja;
    private String senhaloja;
    private String cnpj;
    private String nomeloja;
    private String descricao;

    public int getIdloja() {
        return idloja;
    }

    public void setEmailloja(String emailloja) {
        this.emailloja = emailloja;
    }

    public String getEmailloja() {
        return emailloja;
    }

    public void setSenhaloja(String senhaloja) {
        this.senhaloja = senhaloja;
    }

    public String getSenhaLoja() {
        return senhaloja;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setNomeloja(String nomeloja) {
        this.nomeloja = nomeloja;
    }

    public String getNomeloja() {
        return nomeloja;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }

    public Loja (int idloja, String emailloja, String senhaloja, String cnpj, String nomeloja, String descricao) {
        this.idloja = idloja;
        this.emailloja = emailloja;
        this.senhaloja = senhaloja;
        this.cnpj = cnpj;
        this.nomeloja = nomeloja;
        this.descricao = descricao;
    }
}
