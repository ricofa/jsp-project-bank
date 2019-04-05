/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service.admin;
import dao.daoadmin.impl.DaoNasabah;
import java.util.List;
import model.Nasabah;

/**
 *
 * @author RICO
 */
public class ServiceNasabah {
    DaoNasabah nasabahDao;
    
    public static ServiceNasabah getInstance() {
        return ServiceNasabahHolder.INSTANCE;
    }
    
    private static class ServiceNasabahHolder {
        private static final ServiceNasabah INSTANCE = new ServiceNasabah();
    }
    
    public ServiceNasabah() {
        nasabahDao = new DaoNasabah();
    }
    
    public List<Nasabah> getAll(){
        return nasabahDao.getAll();
    }
    
    public boolean register(Nasabah nasabah){
        nasabahDao.save(nasabah);
        return true;
    }
    
    public boolean delete(long id){
        nasabahDao.delete(id);
        return true;
    }
    
    public Nasabah getById(long id){
        return nasabahDao.getById(id);
    }
    
    public boolean update(Nasabah nasabah, Long id){
        nasabahDao.update(nasabah, id);
        return true;
    }
}
