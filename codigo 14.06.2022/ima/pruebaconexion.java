package CONTROLADOR;

import MODELO.Clientes;
import java.sql.Connection;
import java.util.ArrayList;


public class PruebaConexion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Prueba conexion

        Conexion con = new Conexion();

        Connection reg = con.getConn();

}
}