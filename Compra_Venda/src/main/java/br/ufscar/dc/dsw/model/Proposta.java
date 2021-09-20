package br.ufscar.dc.dsw.model;

public class Proposta {
    private int id;
    private float valorproposta;
    private String condicoes;
    private String data;
    private String status;
    private int idcliente;
    private String placa;


    //SET METHODS
    public void setId(int id) {
        this.id = id;
    }

    public void setValor(float valorproposta){
        this.valorproposta = valorproposta;
    }

    public void setData(String data) {
        this.data = data;
    }

    public void setCondicoes(String condicoes) {
        this.condicoes = condicoes;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setIdCliente(int idcliente) {
        this.idcliente = idcliente;
    }
    
    public void setPlaca(String placa) {
        this.placa = placa;
    }
    
    //GET METHODS
    
    public int getId(){
        return id;
    }

    public float getValor() {
        return valorproposta;
    }

    public String getData() {
        return data;
    }

    public String getCondicoes() {
        return condicoes;
    }

    public String getStatus() {
        return status;
    }

    public int getIdCliente() {
        return idcliente;
    }

    public String getPlaca() {
        return placa;
    }
   
    public Proposta(int id, float valorproposta, String condicoes,String data, String status, int idcliente, String placa){
        this.id = id;
        this.valorproposta = valorproposta;
        this.data = data;
        this.condicoes = condicoes;
        this.status = status;
        this.idcliente = idcliente;
        this.placa = placa;
    }
    public Proposta(int id){
        this.id = id;
    }
    
}