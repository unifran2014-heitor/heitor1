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
@Table(name = "recolha", schema = "heitor2")
public class Recolha {  

    @Id
    @Basic(optional = false)
    @SequenceGenerator(name = "seq_recolha", sequenceName = "heitor2.seq_recolha", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "seq_recolha")
    @Column(name = "id")
    private Integer id;

    @Column(name = "status")
    private String status;

    @Column(name = "data_recolha")
    private String data_recolha;
    
    @ManyToOne
    @JoinColumn(name = "cliente")
    private Cliente cliente;
    
    @ManyToOne
    @JoinColumn(name = "carga")
    private Carga carga;


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

    

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Carga getCarga() {
        return carga;
    }

    public void setCarga(Carga carga) {
        this.carga = carga;
    }

    public String getData_recolha() {
        return data_recolha;
    }

    public void setData_recolha(String data_recolha) {
        this.data_recolha = data_recolha;
    }
    
   
    
    
   }
