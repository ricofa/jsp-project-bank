/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author RICO
 */
@Entity
public class Tabungan {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long rekening;
    private long saldo;
    private String user;
    private String pass;
    private Nasabah nasabah;

    public Tabungan(long rekening, long saldo, String user, String pass, Nasabah nasabah) {
        this.rekening = rekening;
        this.saldo = saldo;
        this.user = user;
        this.pass = pass;
        this.nasabah = nasabah;
    }

    public Tabungan() {
    }

    public long getRekening() {
        return rekening;
    }

    public void setRekening(long rekening) {
        this.rekening = rekening;
    }

    public long getSaldo() {
        return saldo;
    }

    public void setSaldo(long saldo) {
        this.saldo = saldo;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Nasabah getNasabah() {
        return nasabah;
    }

    public void setNasabah(Nasabah nasabah) {
        this.nasabah = nasabah;
    }
   
}
