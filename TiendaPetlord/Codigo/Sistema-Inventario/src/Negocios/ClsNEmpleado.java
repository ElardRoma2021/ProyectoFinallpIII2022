/*
 * Empck nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Empck nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocios;

import Entidad.Conexion;
import Negocios.ClsEEmpleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Usuario
 */
public class ClsNEmpleado {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    ClsEEmpleado c =new ClsEEmpleado();
    
    public boolean MtdAgregarEmpleado(ClsEEmpleado objEEmp) {
       String sql="INSERT INTO tb_empleado (dni_emp,nombre_emp,apellido_emp,direccion_emp,telefono_emp,email_emp,cargo_emp) \n" +
        "VALUES('"+objEEmp.getDni()+"','"+objEEmp.getNombre()+"','"+objEEmp.getApellido()+"','"+objEEmp.getDireccion()+"','"+objEEmp.getEmail()+"','"+objEEmp.getTelefono()+"','"+objEEmp.getCargo()+"');";
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

    public boolean MtdEditarEmpleado(ClsEEmpleado objEEmp) {
        String sql="update tb_empleado set nombre_emp='"+objEEmp.getNombre()+"',apellido_emp='"+objEEmp.getApellido()+"',direccion_emp='"+objEEmp.getDireccion()+"',email_emp='"+objEEmp.getEmail()+"',telefono_emp='"+objEEmp.getTelefono()+"',cargo_emp='"+objEEmp.getCargo()+"' where dni_emp='"+objEEmp.getDni()+"'";
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

    public boolean MtdEliminarEmpleado(ClsEEmpleado objEEmp) {
        String sql="delete from tb_empleado where dni_emp='"+objEEmp.getDni()+"'"; 
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

    public ResultSet MtdListarEmpleados() {
       ResultSet rs=null; 
       String sql="Select * from tb_empleado";
       try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
        }
        catch(SQLException e)
        {
            System.out.println("error al Agregar "+e.getMessage());
            
        }
       return  rs;
    }

    public ResultSet MtdBuscarDni(ClsEEmpleado objEc) {
       String sql="select * from tb_empleado where dni_emp='"+objEc.getDni()+"';";
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
