/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocios;
import Entidad.Conexion;
import Negocios.ClsEBoleta;
import Negocios.ClsEProducto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Presentacion.FrmBoleta;
/**
 *
 * @author USUARIO
 */
public class ClsNBoleta {

    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean MtdAgregarBoleta(ClsEBoleta objEb) {
        String sql="insert into tb_compra (id_com,id_prv,serie_com,fecha_com,total_com,estado_com) "
                + "values('"+objEb.getId_com()+"','"+objEb.getId_prov()+"','"+objEb.getSerie_com()+"','"+objEb.getFecha_com()+"','"+objEb.getTotal_com()+"','"+1+"');"; 
        System.out.println("sentencia"+sql);
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public boolean MtdAgregarDetalle(String text, String text0, ClsEProducto objEp, int id_comp) {
        double d=objEp.getStock_pro()*objEp.getPrecio_pro();
        
        
        
         String sql="insert into tb_compra_detalle (id_pro,cantidad_cod,id_com,subtotal_cod) values('"+objEp.getId_pro()+"','"+objEp.getStock_pro()+"','"+id_comp+"','"+d+"')";        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
}
