/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import model.Tabungan;

/**
 *
 * @author RICO
 */
public class System {
    private Tabungan tabungan;

    public boolean transfer(long nominal, long rekeningTujuan){
        return true;
    }
    
    public String cekSaldo(){
        return "Saldo Anda sekarang adalah " + tabungan.getSaldo();
    }
    
    public boolean login(String user, int pass){
        return true;
    }
    
    public void simpan(long nominal){
    
    }
    
    public boolean ambil(long nominal){
        return true;
    }
}

