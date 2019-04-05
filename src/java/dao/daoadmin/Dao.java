/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.daoadmin;
import java.util.List;

/**
 *
 * @author RICO
 */
public interface Dao<N, ID> {
    public void save(N n);
    
    public void update (N n, ID id);
    
    public void delete(ID id);
    
    public List<N> getAll();
    
    public N getById (ID id);
}
