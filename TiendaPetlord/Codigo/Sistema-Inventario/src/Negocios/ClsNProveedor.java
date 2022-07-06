/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocios;

import Entidad.ClsEProveedor;
import Entidad.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Stryker
 */
public class ClsNProveedor {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    ClsEProveedor c =new ClsEProveedor();
    
    public boolean RegistrarProveedor(ClsEProveedor objEProv) {
       String sql="INSERT INTO tb_proveedor (id_prv, documento_prv ,razon_social_prv ,email_prv ,telefono_prv ,direccion_prv ) \n" +
        "VALUES('"+objEProv.getIdproveedor()+"','"+objEProv.getDocumento()+"','"+objEProv.getRazonsocial()+"','"+objEProv.getCorreo()+"','"+objEProv.getTelefono()+"','"+objEProv.getDireccion()+"');";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        }
        catch(SQLException e)
        {
            System.out.println("error al Registrar "+e.getMessage());
            return false;
        }
        
    }
    
    public boolean EditarProveedor(ClsEProveedor objEProv) {
        String sql="UPDATE tb_proveedor set documento_prv='"+objEProv.getDocumento()+"',razon_social_prv='"+objEProv.getRazonsocial()+"',email_prv='"+objEProv.getCorreo()+"',telefono_prv='"+objEProv.getTelefono()+"',direccion_prv='"+objEProv.getDireccion()+"' where id_prv='"+objEProv.getIdproveedor()+"'";
       try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        }
        catch(SQLException e)
        {
            System.out.println("error al Modificar "+e.getMessage());
            return false;
        }
    }
    
    public ResultSet ListarProveedores() {
       ResultSet rs=null; 
       String sql="Select * from tb_proveedor";
       try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
        }
        catch(SQLException e)
        {
            System.out.println("error al Listar "+e.getMessage());
            
        }
       return  rs;
    }
    
    public boolean EliminarProveedor(ClsEProveedor objEProv) {
        String sql="delete from tb_proveedor where id_prv='"+objEProv.getIdproveedor()+"'"; 
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        }
        catch(SQLException e)
        {
            System.out.println("error al Agregar "+e.getMessage());
            return false;
        }
    }

    public ResultSet MtdBuscarProveedor(ClsEProveedor objEc) {
        String sql="select * from tb_proveedor where id_prv='"+objEc.getIdproveedor()+"';";
        //System.out.println("el sql es "+sql);
        ResultSet rpta;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rpta=ps.executeQuery();
            return rpta;
        } catch (SQLException e) {
            System.out.println("error de buscar"+e.getMessage());
            return rpta=null;
        }
    }
}
