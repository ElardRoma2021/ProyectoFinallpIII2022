/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidad;

/**
 *
 * @author Stryker
 */
public class ClsEProveedor {
    String idproveedor;
    String documento;
    String razonsocial;
    String correo;
    String telefono;
    String direccion;

    public ClsEProveedor() {
    }

    public ClsEProveedor(String idproveedor, String documento, String razonsocial, String correo, String telefono, String direccion) {
        this.idproveedor = idproveedor;
        this.documento = documento;
        this.razonsocial = razonsocial;
        this.correo = correo;
        this.telefono = telefono;
        this.direccion = direccion;
    }

    public String getIdproveedor() {
        return idproveedor;
    }

    public void setIdproveedor(String idproveedor) {
        this.idproveedor = idproveedor;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getRazonsocial() {
        return razonsocial;
    }

    public void setRazonsocial(String razonsocial) {
        this.razonsocial = razonsocial;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    
}
