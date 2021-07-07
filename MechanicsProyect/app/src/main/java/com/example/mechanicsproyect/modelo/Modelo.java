package com.example.mechanicsproyect.modelo;


import java.util.ArrayList;

public class Modelo {
    private static final Modelo ourInstance = new Modelo();


    public static Modelo getInstance() {
        return ourInstance;
    }

    public Modelo() {
    }


    //tpaga
    public String tpprivate = "";
    public String tppublic = "";
    public String tpurl = "";


    public ArrayList<Mechanics> listMechanics = new ArrayList<Mechanics>();

}
