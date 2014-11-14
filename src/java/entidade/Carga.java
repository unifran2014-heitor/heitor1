/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidade;

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author FELIPE
 */
@Entity
@Table(name = "carga", schema = "heitor2")
public class Carga {  

    @Id
    @Basic(optional = false)
    @SequenceGenerator(name = "seq_carga", sequenceName = "heitor2.carga", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_carga")
    @Column(name = "id")
    private Integer id;

    @Column(name = "status")
    private String status;

    @Column(name = "data_carga")
    @Temporal(TemporalType.TIMESTAMP)
    private Date data_carga;

    @ManyToOne
    @JoinColumn(name = "usuario")
    private Usuario usuario;
    
    @OneToMany(mappedBy = "carga")
    private List<Recolha> lstRecolha;

    @OneToMany(mappedBy = "carga")
    private List<Entrega> lstEntrega;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getData_carga() {
        return data_carga;
    }

    public void setData_carga(Date data_carga) {
        this.data_carga = data_carga;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
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
