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
@Table(name = "venda", schema = "heitor2")
public class Venda {  

    @Id
    @Basic(optional = false)
    @SequenceGenerator(name = "seq_venda", sequenceName = "heitor2.seq_venda", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_venda")
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "data_venda")
    @Temporal(TemporalType.TIMESTAMP)
    private Date data_venda;

    @Column(name = "quantidade")
    private Integer quantidade;
    
    @ManyToOne
    @JoinColumn(name = "usuario")
    private Usuario usuario;
    
    @OneToMany(mappedBy = "venda")
    private List<Comodato> lstComodato;
    
    @OneToMany(mappedBy = "venda")
    private List<Cliente> lstCliente;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getData_venda() {
        return data_venda;
    }

    public void setData_venda(Date data_venda) {
        this.data_venda = data_venda;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<Comodato> getLstComodato() {
        return lstComodato;
    }

    public void setLstComodato(List<Comodato> lstComodato) {
        this.lstComodato = lstComodato;
    }

    public List<Cliente> getLstCliente() {
        return lstCliente;
    }

    public void setLstCliente(List<Cliente> lstCliente) {
        this.lstCliente = lstCliente;
    }

   }
