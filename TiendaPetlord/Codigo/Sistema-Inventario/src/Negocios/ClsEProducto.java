/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocios;

/**
 *
 * @author USUARIO
 */
public class ClsEProducto {
    
    int id_pro;
    String nombre_pro;
    String imagen;
    String descripcion_pro;
    Double precio_pro;
    int stock_pro;
    String codigo_pro;
    int id_tipo;

    public ClsEProducto() {
    }

    public ClsEProducto(int id_pro, String nombre_pro, String imagen, String descripcion_pro, Double precio_pro, int stock_pro, String codigo_pro, int id_tipo) {
        this.id_pro = id_pro;
        this.nombre_pro = nombre_pro;
        this.imagen = imagen;
        this.descripcion_pro = descripcion_pro;
        this.precio_pro = precio_pro;
        this.stock_pro = stock_pro;
        this.codigo_pro = codigo_pro;
        this.id_tipo = id_tipo;
    }

    public int getId_pro() {
        return id_pro;
    }

    public void setId_pro(int id_pro) {
        this.id_pro = id_pro;
    }

    public String getNombre_pro() {
        return nombre_pro;
    }

    public void setNombre_pro(String nombre_pro) {
        this.nombre_pro = nombre_pro;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDescripcion_pro() {
        return descripcion_pro;
    }

    public void setDescripcion_pro(String descripcion_pro) {
        this.descripcion_pro = descripcion_pro;
    }

    public Double getPrecio_pro() {
        return precio_pro;
    }

    public void setPrecio_pro(Double precio_pro) {
        this.precio_pro = precio_pro;
    }

    public int getStock_pro() {
        return stock_pro;
    }

    public void setStock_pro(int stock_pro) {
        this.stock_pro = stock_pro;
    }

    public String getCodigo_pro() {
        return codigo_pro;
    }

    public void setCodigo_pro(String codigo_pro) {
        this.codigo_pro = codigo_pro;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }

    
    
    
    
    
}
