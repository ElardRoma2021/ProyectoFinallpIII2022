/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocios;

/**
 *
 * @author USUARIO
 */
public class ClsEBoleta {
    int id_com;
    int id_prov;
    String serie_com;
    String fecha_com;
    double total_com;

    public int getId_com() {
        return id_com;
    }

    public void setId_com(int id_com) {
        this.id_com = id_com;
    }

    public int getId_prov() {
        return id_prov;
    }

    public void setId_prov(int id_prov) {
        this.id_prov = id_prov;
    }

    public String getSerie_com() {
        return serie_com;
    }

    public void setSerie_com(String serie_com) {
        this.serie_com = serie_com;
    }

    public String getFecha_com() {
        return fecha_com;
    }

    public void setFecha_com(String fecha_com) {
        this.fecha_com = fecha_com;
    }

    public double getTotal_com() {
        return total_com;
    }

    public void setTotal_com(double total_com) {
        this.total_com = total_com;
    }

    

    String id_prod;
    int cantidad_cod;
    double subtotal_cod;

    public String getId_prod() {
        return id_prod;
    }

    public void setId_prod(String id_prod) {
        this.id_prod = id_prod;
    }

    public int getCantidad_cod() {
        return cantidad_cod;
    }

    public void setCantidad_cod(int cantidad_cod) {
        this.cantidad_cod = cantidad_cod;
    }

    public double getSubtotal_cod() {
        return subtotal_cod;
    }

    public void setSubtotal_cod(double subtotal_cod) {
        this.subtotal_cod = subtotal_cod;
    }
    
    
}
