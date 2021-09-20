package br.ufscar.dc.dsw.model;

public class Carro {

    private String cnpj;
    private String placa;
    private String modelo;
    private String chassi;
    private String descricaocarro;
    private int ano;
    private int km;
    private float valor;

    public Carro(String cnpj,String placa,String modelo,String chassi,String descricaocarro,int ano,int km,float valor){
        this.cnpj = cnpj;
        this.placa = placa;
        this.modelo = modelo;
        this.chassi = chassi;
        this.descricaocarro = descricaocarro;
        this.ano = ano;
        this.km = km;
        this.valor = valor;
    }
    
    //SET METHODS
      public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
     public void setPlaca(String placa) {
        this.placa = placa;
    }
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    public void setChassi(String chassi) {
        this.chassi = chassi;
    }
    public void setDescricao(String descricaocarro) {
        this.descricaocarro = descricaocarro;
    }
     public void setAno(int ano) {
        this.ano = ano;
    }
    public void setKm(int km) {
        this.km = km;
    }
    public void setValor(float valor) {
        this.valor = valor;
    }

    //GET METHODS
    public String getCnpj() {
        return cnpj;
    }
    public String getPlaca() {
        return placa;
    }
    public String getModelo() {
        return modelo;
    }
    public String getChassi() {
        return chassi;
    }
    public String getDescricao() {
        return descricaocarro;
    }
    public int getAno() {
        return ano;
    }
    public int getKm() {
        return km;
    }
    public float getValor() {
        return valor;
    }
}