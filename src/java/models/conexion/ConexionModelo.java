/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models.conexion;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author PC
 */
public class ConexionModelo {
    
    private static ConexionModelo conexion;
    private EntityManagerFactory fabricaConexion;
    
    public ConexionModelo(){
        fabricaConexion = Persistence.createEntityManagerFactory("guarderia_jspPU");
    }
    public static ConexionModelo getConexion(){
        if(conexion == null){
            conexion = new ConexionModelo();
        }
        return conexion;
    }

    public EntityManagerFactory getFabricaConexion() {
        return fabricaConexion;
    }
    
}
