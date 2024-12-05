package confiq;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class koneksi {
    private static Connection conn;
    
    public static Connection getConnection(){
        if (conn==null){
            try{
                String url = "jdbc:MySQL://localhost:3306/pebol";
                String user = "root";
                String pass = "";
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                conn = (Connection) DriverManager.getConnection(url,user,pass);
            }
            catch(Exception e){
                Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE,null, e);
            }
        }
        return conn;
    }
}
