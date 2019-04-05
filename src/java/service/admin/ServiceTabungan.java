/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.admin;

import dao.daoadmin.impl.DaoNasabah;
import java.util.List;
import model.Tabungan;
import dao.daoadmin.impl.DaoTabungan;
import model.Nasabah;
/**
 *
 * @author RICO
 */
public class ServiceTabungan {
    DaoTabungan daoTabungan;
    DaoNasabah daoNasabah;
    
    public ServiceTabungan(){
        daoTabungan = new DaoTabungan();
        daoNasabah = new DaoNasabah();
    }
    
    public static ServiceTabungan getInstance(){
        return ServiceTabunganHolder.INSTANCE;
    }
    
    private static class ServiceTabunganHolder{
        private static final ServiceTabungan INSTANCE = new ServiceTabungan();
    }
    
    public boolean register(Tabungan tabungan, Long idNas){
        Nasabah nasabah = daoNasabah.getById(idNas);
        if(nasabah != null){
            tabungan.setNasabah(nasabah);
            daoTabungan.save(tabungan);
            return true;
        }
        return false;
    }
    
    public List<Tabungan> getAll(){
        return daoTabungan.getAll();
    }
    
    public boolean delete(long id){
        daoTabungan.delete(id);
        return true;
    }
    
    public Tabungan getById(long id){
        return daoTabungan.getById(id);
    } 
    
    public boolean update(Tabungan tabungan, Long id){
        daoTabungan.update(tabungan, id);
        return true;
    }
    
    public int compareTo(Tabungan t1, Tabungan t2){
        if(t1.getUser().equals(t2.getUser())
           && t1.getPass().equals(t2.getPass())){
            return 0;
        }
        return 1;
    }
    
    public Tabungan login(Tabungan tabungan){
        List<Tabungan> ln = daoTabungan.getAll();
        for(Tabungan t:ln){
            if(compareTo(tabungan,t) == 0)
                return t;
        }
        return null;
    }
}
