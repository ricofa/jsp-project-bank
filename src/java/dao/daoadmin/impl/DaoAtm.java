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
import model.Atm;

/**
 *
 * @author RICO
 */
public class DaoAtm implements Dao<Atm, Long>{
    private EntityManagerFactory enfactory;
    private EntityManager entitymanager;
    
    private void database(){
        enfactory = Persistence.createEntityManagerFactory("persistence");
        entitymanager = enfactory.createEntityManager();
    }
    
    @Override
    public void save(Atm n) {
        database();
        entitymanager.getTransaction().begin();
        entitymanager.persist(n);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void update(Atm n, Long id) {
        database();
        entitymanager.getTransaction().begin();
        Atm editNasabah = entitymanager.find(Atm.class, id);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void delete(Long id) {
        database();
        entitymanager.getTransaction().begin();
        Atm kartu = entitymanager.find(Atm.class, id);
        entitymanager.remove(kartu);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public List<Atm> getAll() {
        database();
        CriteriaBuilder cb = entitymanager.getCriteriaBuilder();
        CriteriaQuery<Atm> cq = cb.createQuery(Atm.class);
        Root<Atm> rootEntry = cq.from(Atm.class);
        CriteriaQuery<Atm> all = cq.select(rootEntry);
        TypedQuery<Atm> allQuery = entitymanager.createQuery(all);
        return allQuery.getResultList();
    }

    @Override
    public Atm getById(Long id) {
        database();
        entitymanager.getTransaction().begin();
        Atm n = entitymanager.find(Atm.class, id);
        return n;
    }
    
}
