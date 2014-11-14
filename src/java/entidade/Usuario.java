package entidade;

import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "usuario", schema = "heitor2")
public class Usuario {
    @Id
    @Basic(optional = false)
    @SequenceGenerator(name = "seq_usuario", sequenceName = "heitor2.seq_usuario", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_usuario")
    @Column(name = "id")
    private Integer id;

    @Column(name = "nome")
    private String nome;
    
    @Column(name = "cpf")
    private String cpf;
    
    @Column(name = "login")
    private String login;
    
    @Column(name = "senha")
    private String senha;
    
    @Column(name = "perfil")
    private String perfil;

    @OneToMany(mappedBy = "usuario")
    private List<Recolha> lstRecolha;

    @OneToMany(mappedBy = "usuario")
    private List<Entrega> lstEntrega;
    
    @OneToMany(mappedBy = "usuario")
    private List<Carga> lstCarga;
    
    @OneToMany(mappedBy = "usuario")
    private List<Cliente> lstCliente;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    
    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public List<Recolha> getLstRecolha() {
        return lstRecolha;
    }

    public void setLstRecolha(List<Recolha> lstRecolha) {
        this.lstRecolha = lstRecolha;
    }

    public List<Entrega> getLstEntrega() {
        return lstEntrega;
    }

    public void setLstEntrega(List<Entrega> lstEntrega) {
        this.lstEntrega = lstEntrega;
    }

    public List<Carga> getLstCarga() {
        return lstCarga;
    }

    public void setLstCarga(List<Carga> lstCarga) {
        this.lstCarga = lstCarga;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public List<Cliente> getLstCliente() {
        return lstCliente;
    }

    public void setLstCliente(List<Cliente> lstCliente) {
        this.lstCliente = lstCliente;
    }
    
    
}