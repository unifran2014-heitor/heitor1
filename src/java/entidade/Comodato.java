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
@Table(name = "comodato", schema = "heitor2")
public class Comodato {  

    @Id
    @Basic(optional = false)
    @SequenceGenerator(name = "seq_comodato", sequenceName = "heitor2.seq_comodato", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_comodato")
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "codigo")
    private Integer codigo;
    
    @Column(name = "setor")
    private String status;

    @Column(name = "nro_comodato")
    private Integer nro_comodato; 
     
    @Column(name = "serie")
    private String serie;
    
    @Column(name = "produto")
    private String produto;
    
    @Column(name = "descricao")
    private String descricao;
    
    @Column(name = "quantidade")
    private Integer quantidade;     

    @ManyToOne
    @JoinColumn(name = "recolha")
    private Recolha recolha;
    
    @ManyToOne
    @JoinColumn(name = "entrega")
    private Entrega entrega;
    
    @ManyToOne
    @JoinColumn(name = "venda")
    private Venda venda;

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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getNro_comodato() {
        return nro_comodato;
    }

    public void setNro_comodato(Integer nro_comodato) {
        this.nro_comodato = nro_comodato;
    }

    public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public String getProduto() {
        return produto;
    }

    public void setProduto(String produto) {
        this.produto = produto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public Recolha getRecolha() {
        return recolha;
    }

    public void setRecolha(Recolha recolha) {
        this.recolha = recolha;
    }

    public Entrega getEntrega() {
        return entrega;
    }

    public void setEntrega(Entrega entrega) {
        this.entrega = entrega;
    }

    public Venda getVenda() {
        return venda;
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    
   }
