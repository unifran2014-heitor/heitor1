package dao;

import acesso.SessionFactoryUtil;
import entidade.*;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;


public class ClienteDAO {

        public boolean Salvar(Cliente cli)//salva venda
    {
        Session s = SessionFactoryUtil.openSession(SessionFactoryUtil.openConnection());//cria sessão e abre conexão
        try{
            s.beginTransaction();//inicia transação
            s.save(cli);//salva o venda no banco
            s.getTransaction().commit();//finaliza e concretiza o comando
            return true;//se der tudo certo retorna true
    }catch(Exception e)
    {
        s.getTransaction().rollback();//caso dê algo errado, desfaz tudo que já tiver feito
        e.printStackTrace();//printa o erro no depurador do netbeans
        return false;//retorna false
    }
        finally{
            s.close();//independente se der errado ou não, fecha a sessão
        }
    }
    
    public boolean Alterar(Cliente cli)
    {
        Session s = SessionFactoryUtil.openSession(SessionFactoryUtil.openConnection());
        try{
            s.beginTransaction();
            s.merge(cli);//o comando merge verifica se o registro já existe no banco, se sim ele sobrescreve os dados
            s.getTransaction().commit();
            return true;
    }catch(Exception e)
    {
        s.getTransaction().rollback();
        e.printStackTrace();
        return false;
    }
        finally{
            s.close();
        }
    }
    
    public void Excluir(int id)
    {
        Session s = SessionFactoryUtil.openSession(SessionFactoryUtil.openConnection());
        try{
            s.beginTransaction();
            Criteria criterio = s.createCriteria(Venda.class);//cria varial de condição
            criterio.add(Restrictions.eq("id", id));//adiciona uma restrição, nesse caso o campo id do venda deve ser igual o id passado como parametro na função
            List<Cliente> cli = criterio.list();//lista o venda
            s.delete(cli);//deleta
        }catch(Exception e)
        {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    
    
    public static List<Cliente> listartodos()
    {
        Session s = SessionFactoryUtil.openSession(SessionFactoryUtil.openConnection());
        try{
            s.beginTransaction();
            Criteria criterio = s.createCriteria(Cliente.class);
            List<Cliente> retorno = criterio.list();
            return retorno;
        }catch(Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
            return null;
        }finally{
            s.close();
        }
    }
    
    public static List<Cliente> listar(int id)
    {
        Session s = SessionFactoryUtil.openSession(SessionFactoryUtil.openConnection());
        try{
            s.beginTransaction();
            Criteria criterio = s.createCriteria(Cliente.class);
            criterio.add(Restrictions.eq("id_empregada", id));
            List<Cliente> retorno = criterio.list();
            return retorno;
        }catch(Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
            return null;
        }finally{
            s.close();
        }
    }
}