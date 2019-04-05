/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.daoadmin.impl;

import dao.daoadmin.Dao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import model.Tabungan;

/**
 *
 * @author RICO
 */
public class DaoTabungan implements Dao<Tabungan, Long>{

    @Override
    public void save(Tabungan n) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory("persistence");
        
        EntityManager entitymanager = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        
        entitymanager.persist(n);
        entitymanager.getTransaction().commit();
        
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void update(Tabungan t, Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory("persistence");
        
        EntityManager entitymanager = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        
        Tabungan editTabungan = entitymanager.find(Tabungan.class, id);
        
        editTabungan.setUser(t.getUser());
        editTabungan.setPass(t.getPass());
        editTabungan.setSaldo(t.getSaldo());
        editTabungan.setRekening(t.getRekening());
        
        entitymanager.getTransaction().commit();
        
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void delete(Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory("persistence");
        
        EntityManager entitymanager = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        
        Tabungan tabungan = entitymanager.find(Tabungan.class, id);
        entitymanager.remove(tabungan);
        
        entitymanager.getTransaction().commit();
        
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public List<Tabungan> getAll() {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory("persistence");
        
        EntityManager entitymanager = enfactory.createEntityManager();
        
        CriteriaBuilder cb = entitymanager.getCriteriaBuilder();
        CriteriaQuery<Tabungan> cq = cb.createQuery(Tabungan.class);
        
        Root<Tabungan> rootEntry = cq.from(Tabungan.class);
        CriteriaQuery<Tabungan> all = cq.select(rootEntry);
        
        TypedQuery<Tabungan> allQuery = entitymanager.createQuery(all);
        
        return allQuery.getResultList();
    }

    @Override
    public Tabungan getById(Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory("persistence");
        
        EntityManager entitymanager = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        
        Tabungan tabungan = entitymanager.find(Tabungan.class, id);
        
        return tabungan;
    }
    
}
