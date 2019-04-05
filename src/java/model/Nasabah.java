/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author RICO
 */
@Entity
public class Nasabah {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String user;
    List<Tabungan> listTabungan;

    public Nasabah() {
    }
    
    public Nasabah(Long id, String user, List<Tabungan> listTabungan) {
        this.id = id;
        this.user = user;
        this.listTabungan = listTabungan;
    }

    public Nasabah(Long id, String user) {
        this.id = id;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public List<Tabungan> getListTabungan() {
        return listTabungan;
    }

    public void setListTabungan(List<Tabungan> listTabungan) {
        this.listTabungan = listTabungan;
    }

    
}
