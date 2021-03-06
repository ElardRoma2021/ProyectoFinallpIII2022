/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PgkPresentacion;

import PkgEntidad.ClsInmuebleE;
import PkgNegocio.ClsInmuebleN;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author smoke
 */
public class FrmPublico extends javax.swing.JInternalFrame {

    /**
     * Creates new form FrmPublico
     */
    public DefaultTableModel modelo;
    public static int seleccion;
    public static String inmcod;
    public static String codper;
    public static String Direccion;
    public static String NroHa;
    public static String Ciudad;
    public static String Descripcion;
    public static String Categoria;
    public static String Precio;
    public static JLabel foto;
    public FrmPublico() {
        initComponents();
        tbInmueble.setDefaultRenderer(Object.class,new RenderTabla());
        
        modelo=new  DefaultTableModel();
        modelo.addColumn("CODIGO");
        modelo.addColumn("CODUSUARIO");
        modelo.addColumn("DIRECCION");
        modelo.addColumn("ESTADO");
        modelo.addColumn("NroHABITACIONES");
        modelo.addColumn("CIUDAD");
        modelo.addColumn("DESCRIPCION");
        modelo.addColumn("CATEGORIA");
        modelo.addColumn("PRECIO");
        modelo.addColumn("FOTO");
        modelo.addColumn("RESERVAR");
        ClsInmuebleN objInmuebleN=new ClsInmuebleN();
        JButton boton1=new JButton("Reservar");
        
        Object[] datos=new Object[11];
        for (ClsInmuebleE objInmuebleE : objInmuebleN.MtdListarInmueblePublicado()) {
            datos[0]=String.valueOf(objInmuebleE.getInmuebleid());
            datos[1]=String.valueOf(objInmuebleE.getUsuarioid());
            datos[2]=objInmuebleE.getDireccioninmueble();
            datos[3]=objInmuebleE.getEstado();
            datos[4]=String.valueOf(objInmuebleE.getNrohabitaciones());
            datos[5]=objInmuebleE.getCiudad();
            datos[6]=objInmuebleE.getDescripcion();
            datos[7]=objInmuebleE.getCategoria();
            datos[8]=String.valueOf(objInmuebleE.getPrecio());
            
            try{
                    byte[] bi = objInmuebleE.getFoto();
                    BufferedImage image = null;
                    InputStream in = new ByteArrayInputStream(bi);
                    image = ImageIO.read(in);
                    ImageIcon imgi = new ImageIcon(image.getScaledInstance(120, 120, 0));
                    datos[9] = new JLabel(imgi);

                }catch(Exception ex){
                    datos[9] = new JLabel("No imagen");
                }
            datos[10]=boton1;
            modelo.addRow(datos);
        }
        this.tbInmueble.setModel(modelo);
        tbInmueble.setRowHeight(100);
        tbInmueble.getColumnModel().getColumn(0).setMaxWidth(0);
        tbInmueble.getColumnModel().getColumn(0).setMinWidth(0);
        tbInmueble.getColumnModel().getColumn(0).setPreferredWidth(0);
        tbInmueble.getColumnModel().getColumn(1).setMaxWidth(0);
        tbInmueble.getColumnModel().getColumn(1).setMinWidth(0);
        tbInmueble.getColumnModel().getColumn(1).setPreferredWidth(0);
        tbInmueble.getColumnModel().getColumn(3).setMaxWidth(0);
        tbInmueble.getColumnModel().getColumn(3).setMinWidth(0);
        tbInmueble.getColumnModel().getColumn(3).setPreferredWidth(0);
        tbInmueble.getColumnModel().getColumn(4).setMaxWidth(20);
        tbInmueble.getColumnModel().getColumn(4).setMinWidth(20);
        tbInmueble.getColumnModel().getColumn(4).setPreferredWidth(20);
        tbInmueble.getColumnModel().getColumn(5).setMaxWidth(50);
        tbInmueble.getColumnModel().getColumn(5).setMinWidth(50);
        tbInmueble.getColumnModel().getColumn(5).setPreferredWidth(50);
        tbInmueble.getColumnModel().getColumn(8).setMaxWidth(50);
        tbInmueble.getColumnModel().getColumn(8).setMinWidth(50);
        tbInmueble.getColumnModel().getColumn(8).setPreferredWidth(50);
        tbInmueble.getColumnModel().getColumn(10).setMaxWidth(350);
        tbInmueble.getColumnModel().getColumn(10).setMinWidth(50);
        tbInmueble.getColumnModel().getColumn(10).setPreferredWidth(80);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        tbInmueble = new javax.swing.JTable();

        setBackground(new java.awt.Color(255, 255, 255));

        tbInmueble.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tbInmueble.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbInmuebleMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbInmueble);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 802, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 525, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tbInmuebleMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbInmuebleMouseClicked
        // TODO add your handling code here:
        seleccion = tbInmueble.rowAtPoint(evt.getPoint());
        inmcod = (String.valueOf(tbInmueble.getValueAt(seleccion,0)));
        codper = (String.valueOf(tbInmueble.getValueAt(seleccion,1)));
        Direccion = (String.valueOf(tbInmueble.getValueAt(seleccion,2)));
        NroHa = (String.valueOf(tbInmueble.getValueAt(seleccion,4)));
        Ciudad = (String.valueOf(tbInmueble.getValueAt(seleccion,5)));
        Descripcion = (String.valueOf(tbInmueble.getValueAt(seleccion,6)));
        Categoria = (String.valueOf(tbInmueble.getValueAt(seleccion,7)));
        Precio = (String.valueOf(tbInmueble.getValueAt(seleccion,8)));
        foto = (JLabel) tbInmueble.getValueAt(seleccion, 9);
        
        FrmRealizarReserva frm=new FrmRealizarReserva();
                frm.show();
                this.hide();
        
    }//GEN-LAST:event_tbInmuebleMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tbInmueble;
    // End of variables declaration//GEN-END:variables
}
