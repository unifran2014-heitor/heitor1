package acesso;

import entidade.Usuario;
import org.hibernate.Session;

/**
 *
 * @author Ziliotti
 */
public class Main {

    public static void main(String[] args) {
        Session s = SessionFactoryUtil.openSession(SessionFactoryUtil.openConnection());
        s.beginTransaction();

        Usuario usuario1 = new Usuario();
        usuario1.setNome("Hibernate");
        usuario1.setCpf("111.111.111-11");
        usuario1.setLogin("hibernate");
        usuario1.setSenha("hinernate");
        usuario1.setPerfil("mkt");  
        s.save(usuario1);

        s.getTransaction().commit();
        s.close();
    }
}
