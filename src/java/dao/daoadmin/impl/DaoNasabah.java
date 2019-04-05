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
import model.Nasabah;

/**
 *
 * @author RICO
 */
public class DaoNasabah implements Dao <Nasabah, Long>{
    private EntityManagerFactory emfactory;
    private EntityManager entityManager;
    
    private void database(){
        emfactory = Persistence.createEntityManagerFactory("persistence");
        entityManager = emfactory.createEntityManager();
    }
    
    @Override
    public void  save (Nasabah n){
        database();
        entityManager.getTransaction().begin();
        entityManager.persist(n);
        entityManager.getTransaction().commit();
        entityManager.close();
        emfactory.close();
    }

    @Override
    public void update(Nasabah n, Long id) {
        database();
        entityManager.getTransaction().begin();
        Nasabah edit = entityManager.find(Nasabah.class, id);
        edit.setUser(n.getUser());
        entityManager.getTransaction().commit();
        entityManager.close();
        emfactory.close();
    }

    @Override
    public void delete(Long id) {
        database();
        entityManager.getTransaction().begin();
        Nasabah delNasabah = entityManager.find(Nasabah.class, id);
        entityManager.remove(delNasabah);
        entityManager.getTransaction().commit();
        entityManager.close();
        emfactory.close();
    }

    @Override
    public List<Nasabah> getAll() {
        database();
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Nasabah> cq = cb.createQuery(Nasabah.class);
        Root<Nasabah> rootEntry = cq.from(Nasabah.class);
        CriteriaQuery<Nasabah> all = cq.select(rootEntry);
        TypedQuery<Nasabah> allQuery = entityManager.createQuery(all);
        return allQuery.getResultList();
    }

    @Override
    public Nasabah getById(Long id) {
        database();
        Nasabah nasabah = entityManager.find(Nasabah.class, id);
        
        return nasabah;
    }

}
