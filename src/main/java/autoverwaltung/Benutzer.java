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

import dhbwka.wwi.vertsys.javaee.vs_autoverwaltung.common.jpa.User;
import java.util.Date;
import javax.ejb.Schedule;
import javax.ejb.Stateless;

/**
 *
 * @author Vincent
 */
import java.io.Serializable;
@Stateless
public class Benutzer implements Serializable {

    private String vorname;
    private String nachname;

    public Benutzer(){
        
    }

    public String getVorname() {
        return vorname;
    }

    public void setVorname(String vorname) {
        this.vorname = vorname;
    }
    
    public String getNachname() {
        return vorname;
    }

    public void setNachname(String nachname) {
        this.nachname = nachname;
    }
}