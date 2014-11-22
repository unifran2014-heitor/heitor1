package entidade;

import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "cliente", schema = "heitor2")
public class Cliente {
    @Id
    @Basic(optional = false)
    @SequenceGenerator(name = "seq_cliente", sequenceName = "heitor2.seq_cliente", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_cliente")
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "codigo")
    private Integer codigo;
    
    @Column(name = "nome")
    private String nome;
    
    @Column(name = "cidade")
    private String cidade;
    
     @Column(name = "setor")
    private Integer setor;
    
    @OneToMany(mappedBy = "cliente")
    private List<Recolha> lstRecolha;

    @OneToMany(mappedBy = "cliente")
    private List<Entrega> lstEntrega;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public Integer getSetor() {
        return setor;
    }

    public void setSetor(Integer setor) {
        this.setor = setor;
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

   

    
}