
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionBD {
    static String driver="com.mysql.jdbc.Driver";
    static String url="jdbc:mysql://localhost:3306/bd_almacen";
    static String usuario="root";
    static String password="";
    
    protected Connection conn = null;

   public conexionBD() {
         try{
          Class.forName(driver);
          conn =DriverManager.getConnection(url,usuario,password);
          
          if(conn != null){
              System.out.println("conexion ok"+conn);
          }
      }
       catch (SQLException ex){
          System.out.println("Error de SQL"+ ex.getMessage() );
      
      }
      catch(ClassNotFoundException ex){
          System.out.println("Falta especificar driver"+ex.getMessage());
      }
     
   }
    public Connection conectar(){
     return conn;
    }
    public void desconectar(){
        try {
            System.out.println("Cerrando la base de datos"+conn);
            conn.close();
        } catch (SQLException e) {
            System.out.println("Error al cerrar la base de datos " +e.getMessage());
        
        }
    }
    
}
