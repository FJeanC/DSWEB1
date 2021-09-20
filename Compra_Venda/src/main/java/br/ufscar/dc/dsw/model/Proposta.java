package br.ufscar.dc.dsw.model;

public class Proposta {
    private int id;
    private float valorproposta;
    private String condicoes;
    private String data;
    private String statusproposta;
    private int clienteproposta;
    private String placaproposta;


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

    public void setStatusproposta(String statusproposta) {
        this.statusproposta = statusproposta;
    }

    public void setClienteproposta(int clienteproposta) {
        this.clienteproposta = clienteproposta;
    }
    
    public void setPlacaproposta(String placaproposta) {
        this.placaproposta = placaproposta;
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

    public String getStatusproposta() {
        return statusproposta;
    }

    public int getClienteProposta() {
        return clienteproposta;
    }

    public String getPlacaproposta() {
        return placaproposta;
    }
   
    public Proposta(int id, float valorproposta, String condicoes,String data, String statusproposta, int clienteproposta, String placaproposta){
        this.id = id;
        this.valorproposta = valorproposta;
        this.data = data;
        this.condicoes = condicoes;
        this.statusproposta = statusproposta;
        this.clienteproposta = clienteproposta;
        this.placaproposta = placaproposta;
    }
    public Proposta(int id){
        this.id = id;
    }
    
}