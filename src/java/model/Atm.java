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
public class Atm {
    public enum type {SILVER, GOLD, PLATINUM}
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long noatm;
    private Long pin;
    private type jenisatm;
    private Tabungan tabungan;

    public Atm() {
    }

    public Long getNoatm() {
        return noatm;
    }

    public void setNoatm(long noatm) {
        this.noatm = noatm;
    }

    public type getJenisatm() {
        return jenisatm;
    }
    
    public type typeAtm(){
        return this.jenisatm;
    }
    
    public void setJenisatm(type jenisatm) {
        this.jenisatm = jenisatm;
    }
    
    public long limitCard(type jenisCard){
        if(jenisCard == type.PLATINUM)
            return Long.valueOf(3000);
        else if(jenisCard == type.SILVER)
            return Long.valueOf(2000);
        else
            return Long.valueOf(1000);
    }
    
    public Tabungan getTabungan() {
        return tabungan;
    }

    public void setTabungan(Tabungan tabungan) {
        this.tabungan = tabungan;
    }

    public Long getPin() {
        return pin;
    }

    public void setPin(long pin) {
        this.pin = pin;
    }
    
    
}
