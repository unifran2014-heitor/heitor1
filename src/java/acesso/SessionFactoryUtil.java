package acesso;

import entidade.Carga;
import entidade.Cliente;
import entidade.Comodato;
import entidade.Entrega;
import entidade.Recolha;
import entidade.Usuario;
import entidade.Venda;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Logger;
import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaUpdate;

public class SessionFactoryUtil {

    private static AnnotationConfiguration cfg;
    private static org.hibernate.SessionFactory sessionFactory;

    public static void main(String[] args) {
        initiate();
    }

    public static void initiate() {
        if (cfg == null) {
            try {
                cfg = new AnnotationConfiguration();
                cfg.setProperty("hibernate.transaction.factory_class", "org.hibernate.transaction.JDBCTransactionFactory");
                cfg.setProperty("hibernate.current_session_context_class", "thread");
                cfg.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
                String driver = "com.mysql.jdbc.Driver";
                cfg.setProperty("hibernate.connection.driver_class", driver);
//                cfg.setProperty("hibernate.connection.url", "jdbc:mysql://localhost/trabalhoa2");
                cfg.setProperty("hibernate.connection.url", "jdbc:mysql://localhost/heitor2");
                cfg.setProperty("hibernate.connection.username", "root");
                cfg.setProperty("hibernate.connection.password", "");
                cfg.setProperty("hibernate.hbm2dll.auto", "validate");

                // entidades
                
                cfg.addAnnotatedClass(Carga.class);
                cfg.addAnnotatedClass(Cliente.class);
                cfg.addAnnotatedClass(Comodato.class);
                cfg.addAnnotatedClass(Entrega.class);
                cfg.addAnnotatedClass(Recolha.class);
                cfg.addAnnotatedClass(Usuario.class);
                cfg.addAnnotatedClass(Venda.class);
                
                sessionFactory = cfg.buildSessionFactory();
                updateDatabase();
            } catch (Exception ex) {
                cfg = null;
                throw new RuntimeException(ex);
            }
        }
    }

    public static Session openSession(Connection connection) {
        if (sessionFactory == null) {
            Logger.getLogger(SessionFactoryUtil.class.getName()).info("Iniciando SessionFactory.");
            initiate();
        }
        Session session = sessionFactory.openSession();
        return session;
    }

    public static Connection openConnection() {
        Connection connection;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //connection = DriverManager.getConnection("jdbc:mysql://localhost/trabalhoa2", "root", "1234");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/heitor2", "root", "");
            return connection;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    private static void updateDatabase() {
        new SchemaUpdate(cfg).execute(true, true);
    }
}
