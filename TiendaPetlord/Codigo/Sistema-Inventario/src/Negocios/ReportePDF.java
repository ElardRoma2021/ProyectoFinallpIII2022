/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocios;

import Entidad.Conexion;
import Presentacion.Reporte;
import com.itextpdf.io.font.FontConstants;
import com.itextpdf.kernel.events.PdfDocumentEvent;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.property.UnitValue;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.StringTokenizer;

/**
 *
 * @author David
 */
public class ReportePDF implements Reporte {
    // conexion
    private Connection con;
    // script
    private final String SQL_CONSULTA = "SELECT pr.nombre_pro, CONCAT(cl.nombres_cli,' ', cl.apellidos_cli) AS 'Cliente',bod.cantidad_bod , bod.subtotal_bod,  bol.fecha_bol,  bol.estado_bol \n" +
"FROM tb_boleta bol\n" +
"INNER JOIN tb_cliente cl ON cl.id_cli = bol.id_cli\n" +
"INNER JOIN tb_boleta_detalle bod ON bod.id_bol = bol.id_bol\n" +
"INNER JOIN tb_producto pr ON pr.id_pro = bod.id_pro";
    
    //constructor
    public ReportePDF(){
        
    }
    public ReportePDF(Connection c){
        this.con = c;
    }
    
    //Seguir el video youtube.com/davidpachecojimenez
    @Override
    public void generarReporte(String DES, String titulo) throws SQLException, FileNotFoundException, IOException {
        PdfWriter writer = new PdfWriter(DES);
        PdfDocument pdf = new PdfDocument (writer);
        // tamaño a4 en forma horizontal
        Document document = new Document(pdf, PageSize.A4.rotate());
        
        // agregar encabezado y pie de pagina que esta estructurado en clase vento pdf
        EventoPDF evento = new EventoPDF(document, titulo);
        //Indicamos que el manejador se encarga del evento END_PAGE
        pdf.addEventHandler(PdfDocumentEvent.END_PAGE, evento);
        
        // agrega margenes a los cuatro lados
        document.setMargins(75, 36, 75, 36);
        // Fuetnes
        PdfFont font = PdfFontFactory.createFont(FontConstants.HELVETICA);
        PdfFont bold = PdfFontFactory.createFont(FontConstants.HELVETICA_BOLD);
        
        // agrega un array con titulos
        String tituloTabla[] = {"Producto", "Cliente", "Cantidad", "Precio", "Fecha", "Estado de Boleta"}; 
        // columnas para la tabla y tamaño
        float[]anchoColumn = {3, 3, 1, 1, 2, 3};
        
        // se crea la tabla
        Table table = new Table (anchoColumn);
        // hacemos que la tabla ocupe el 100% de la hoja
        table.setWidth(UnitValue.createPercentValue(100));
        
        //iniciamos la conezion jdbc con mysql
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            conn = (this.con != null) ? this.con : Conexion.getConnection();
            ps = conn.prepareStatement(SQL_CONSULTA);
            rs = ps.executeQuery();
            // primero se agregan los titulos de las columnas
            for (String encabezadoTabla : tituloTabla){
                process(table, encabezadoTabla, bold, true);
            }
            
            while (rs.next()){
            
                // guarda la consulta linea por linea
                String line = "";
                for (int i = 1; i<= 6; i++) {
                    String valor = rs.getString(i);
                    if (i == 6){
                        if (valor == null || valor.trim().length() == 0) {
                        line += "-";
                        } else {
                            line += valor;
                        }
                    } else {
                        if (valor == null || valor.trim().length() == 0){
                            line += "-;";
                        } else {
                            line += valor + ";";
                        }
                    }   
                }
                
                // aqui se pasa la linea
                process(table, line, font, false);
            }
            
            // se agrega la tabla al documento
            document.add(table);
            // se cierra el proceso
            document.close();
        } finally {
            Conexion.close(rs);
            Conexion.close(ps);
            if (this.con == null){
                Conexion.close(conn);
            }
        }
    }
// se procesa el contenido de la tabla
    public void process(Table table, String line, PdfFont font, boolean isHeader){
        StringTokenizer tokenizer = new StringTokenizer(line, ";");
        while (tokenizer.hasMoreTokens()){
            if (isHeader) { // encabezado
                table.addHeaderCell(new Cell().add(new Paragraph(tokenizer.nextToken()) .setFont(font)));
            } else { // contenido
                table.addCell(new Cell().add(new Paragraph(tokenizer.nextToken()) .setFont(font)));
            }
        }
    }

}
