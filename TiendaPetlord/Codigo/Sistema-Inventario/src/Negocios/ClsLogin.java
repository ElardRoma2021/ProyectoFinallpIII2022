/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Negocios;

/**
 *
 * @author USUARIO
 */
public class ClsLogin {
    String dni_cli;
    String nombre_cli;
    String apellido_cli;
    String email_cli;
    String clave_cli;
    String telefono_cli;

    public ClsLogin() {
    }

    public ClsLogin(String dni_cli, String nombre_cli, String apellido_cli, String email_cli, String clave_cli, String telefono_cli) {
        this.dni_cli = dni_cli;
        this.nombre_cli = nombre_cli;
        this.apellido_cli = apellido_cli;
        this.email_cli = email_cli;
        this.clave_cli = clave_cli;
        this.telefono_cli = telefono_cli;
    }

    public String getDni_cli() {
        return dni_cli;
    }

    public void setDni_cli(String dni_cli) {
        this.dni_cli = dni_cli;
    }

    public String getNombre_cli() {
        return nombre_cli;
    }

    public void setNombre_cli(String nombre_cli) {
        this.nombre_cli = nombre_cli;
    }

    public String getApellido_cli() {
        return apellido_cli;
    }

    public void setApellido_cli(String apellido_cli) {
        this.apellido_cli = apellido_cli;
    }

    public String getEmail_cli() {
        return email_cli;
    }

    public void setEmail_cli(String email_cli) {
        this.email_cli = email_cli;
    }

    public String getClave_cli() {
        return clave_cli;
    }

    public void setClave_cli(String clave_cli) {
        this.clave_cli = clave_cli;
    }

    public String getTelefono_cli() {
        return telefono_cli;
    }

    public void setTelefono_cli(String telefono_cli) {
        this.telefono_cli = telefono_cli;
    }
    
}
