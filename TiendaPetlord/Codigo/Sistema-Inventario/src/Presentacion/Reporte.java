/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Presentacion;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;

/**
 *
 * @author David
 */
public interface Reporte {

    public abstract void generarReporte(String DES, String titulo) throws SQLException, FileNotFoundException, IOException;

}
