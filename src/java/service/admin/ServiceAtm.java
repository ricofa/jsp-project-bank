/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.admin;

import dao.daoadmin.impl.DaoAtm;
import java.util.List;
import model.Atm;

/**
 *
 * @author RICO
 */
public class ServiceAtm {
    DaoAtm daoAtm;

    public ServiceAtm() {
        daoAtm = new DaoAtm();
    }
    
    public static ServiceAtm getInstance(){
        return ServiceKartuHolder.INSTANCE;
    }
    
    private static class ServiceKartuHolder{
        private static final ServiceAtm INSTANCE = new ServiceAtm();
    }
    
    public boolean register(Atm card){
        daoAtm.save(card);
        return true;
    }
    
    public List<Atm> getAll(){
        return daoAtm.getAll();
    }
    
    public boolean delete(long id){
        daoAtm.delete(id);
        return true;
    }
    
    public Atm getById(long id){
        return daoAtm.getById(id);
    }
    
    public boolean update(Atm card, Long id){
        daoAtm.update(card, id);
        return true;
    }
    public int compareTo(Atm card1, Atm card2){
        if(card1.getNoatm().equals(card2.getNoatm())
           && card1.getPin().equals(card2.getPin())){
            return 0;
        }
        return 1;
    }
    
    public Atm login(Atm card){
        List<Atm> ln = daoAtm.getAll();
        for(Atm c:ln){
            if(compareTo(card,c) == 0)
                return c;
        }
        return null;
    }
}
