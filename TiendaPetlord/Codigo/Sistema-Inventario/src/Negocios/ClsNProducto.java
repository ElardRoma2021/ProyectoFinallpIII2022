/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocios;

import Entidad.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USUARIO
 */
public class ClsNProducto {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    ClsEProducto p = new ClsEProducto();
    private String sql;

    public ResultSet MtdListarProducto() {
        ResultSet rs=null;
        String sql="select id_pro, nombre_pro, descripcion_pro, precio_pro, stock_pro from tb_producto";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
        } catch (Exception e) {
            System.out.println("error "+e.getMessage());
        }
        return rs;
    }

    public boolean MtdAgregarProducto(ClsEProducto objEPro) {
        String sql="INSERT INTO tb_producto (id_pro, nombre_pro, imagen_pro , descripcion_pro, precio_pro, stock_pro) \n" +
        "VALUES('"+objEPro.getId_pro()+"','"+objEPro.getNombre_pro()+"','"+objEPro.getImagen()+"','"+objEPro.getDescripcion_pro()+"','"+objEPro.getPrecio_pro()+"','"+objEPro.getStock_pro()+"');";
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

    public boolean MtdEditarProducto(ClsEProducto objEPro) {
         String sql="update tb_producto set nombre_pro='"+objEPro.getNombre_pro()+"',descripcion_pro='"+objEPro.getDescripcion_pro()+"',precio_pro='"+objEPro.getPrecio_pro()+"',stock_pro='"+objEPro.getStock_pro()+"' where id_pro='"+objEPro.getId_pro()+"'";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
            return true;
        }
        catch(SQLException e)
        {
            System.out.println("error al Actualizar "+e.getMessage());
            return false;
        }
    }

    public ResultSet MtdBuscarId(ClsEProducto objEP) {
        String sql="select * from tb_producto where id_pro='"+objEP.getId_pro()+"';";
        ResultSet rpta;
        
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rpta=ps.executeQuery();
            return rpta;
        }
        catch (SQLException e) 
        {
            System.out.println("error "+e.getMessage());
            return rpta=null;
        }
    }

    public boolean MtdEliminarProducto(ClsEProducto objEPro) {
        String sql="delete from tb_producto where id_pro='"+objEPro.getId_pro()+"'";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
            return true;
        }
        catch(SQLException e)
        {
            System.out.println("error al Eliminar "+e.getMessage());
            return false;
        }
        
    }
    
    
    
    
    
    
    
}
