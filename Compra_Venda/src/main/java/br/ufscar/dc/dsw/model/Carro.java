package br.ufscar.dc.dsw.model;

public class Carro {

    private String placa;
    private String modelo;
    private String chassi;
    private int ano;
    private int km;
    private String descricaocarro;
    private float valor;
    private int lojacarro;
    
    public Carro(String placa, String modelo, String chassi, int ano, int km, String descricaocarro, float valor, int lojacarro){

        this.placa = placa;
        this.modelo = modelo;
        this.chassi = chassi;
        this.descricaocarro = descricaocarro;
        this.ano = ano;
        this.km = km;
        this.valor = valor;
        this.lojacarro = lojacarro;
    }
    
    //SET METHODS

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
    public void setLojacarro(int lojacarro) {
        this.lojacarro = lojacarro;
    }
    //GET METHODS

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

    public int getLojacarro() {
        return lojacarro;
    }
    
}