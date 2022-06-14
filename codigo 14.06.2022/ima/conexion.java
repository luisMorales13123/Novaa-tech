
package CONTROLADOR;

import java.sql.Connection;
import java.sql.DriverManager;



public class Conexion {
    
    private Connection conn;
    private String driver = "com.mysql.cj.jdbc.Driver";
    // Parametros de conexion con la base de datos.
    private String user = "root";
    private String password = "";
    private String baseDatos = "iglesiasdb";
    private String url = "jdbc:mysql://localhost:3306/" + baseDatos +"?useTimezone=true&serverTimezone=UTC";

    //CREAMOS EL METODO CONSTRUCTOR EL CUAL LLEVA EL NOMBRE DE LA CLASE
	//ESTE CONSTRUCTOR ES UNA SUBRUTINA CUYA  MISION ES INICIALIZAR EL OBJETO DE LA CLASE.
    public Conexion() {
        conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
            if (conn == null) {
                System.out.println("No se estableció la conexión" + "\n" + url);
            } else {
                System.out.println("Conexión Establecida prueba maria");
            }
        } catch (Exception ex) {
            
            System.err.println(ex.getMessage());
                     
        }
    }
//CREAMOS EL METODO QUE NOS RETORNA LA CONEXION
    public Connection getConn() {
        return conn;
    }
}
