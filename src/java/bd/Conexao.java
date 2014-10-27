package bd;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author FELIPE
 */
public class Conexao {
    private Connection conexao;
    
    public Conexao(){
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String url = "jdbc:mysql://localhost/heitor1";
        conexao = DriverManager.getConnection(url,"root","");
    }
    catch(Exception e){
     e.printStackTrace();   
        
    }
    }

    public Connection getConexao() {
        return conexao;
    }

    public void setConexao(Connection conexao) {
        this.conexao = conexao;
    }
    
    
}