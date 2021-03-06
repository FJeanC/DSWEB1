package br.ufscar.dc.dsw.model;

public class Proposta {
    private int id;
    private float valorproposta;
    private String condicoes;
    private String dataatual;
    private String statusproposta;
    private int clienteproposta;
    private String placaproposta;


    //SET METHODS
    public void setId(int id) {
        this.id = id;
    }

    public void setValorproposta(float valorproposta){
        this.valorproposta = valorproposta;
    }

    public void setDataatual(String dataatual) {
        this.dataatual = dataatual;
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

    public float getValorproposta() {
        return valorproposta;
    }

    public String getDataatual() {
        return dataatual;
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
   
    public Proposta(int id, float valorproposta, String condicoes,String dataatual, String statusproposta, int clienteproposta, String placaproposta){
        this.id = id;
        this.valorproposta = valorproposta;
        this.dataatual = dataatual;
        this.condicoes = condicoes;
        this.statusproposta = statusproposta;
        this.clienteproposta = clienteproposta;
        this.placaproposta = placaproposta;
    }
    public Proposta(int id){
        this.id = id;
    }
    
}