/*
 * Copyright © 2019 N. Fichtner, N. Bäuerle, V. Neuhoff
 * 
 * E-Mail: vincent.neuhoff@web.de
 * Webseite: 
 * 
 * Dieser Quellcode ist lizenziert unter einer
 * Creative Commons Namensnennung 4.0 International Lizenz.
 */

package autoverwaltung;

import autoverwaltung.Benutzer;
import dhbwka.wwi.vertsys.javaee.vs_autoverwaltung.common.jpa.User;
import dhbwka.wwi.vertsys.javaee.vs_autoverwaltung.common.ejb.EntityBean;
import javax.ejb.Stateless;
import java.util.List;
import javax.annotation.Resource;
import javax.annotation.security.RolesAllowed;
import javax.ejb.EJBContext;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Vincent
 */
@Stateless
@RolesAllowed("app-user")
public class BenutzerBean extends EntityBean<Benutzer, Long>{

    
    @PersistenceContext
    EntityManager em;
    
    
    public BenutzerBean(){
        super(Benutzer.class);
    }
    public Benutzer update(Benutzer benutzer){
        return em.merge(benutzer);
    }  
}