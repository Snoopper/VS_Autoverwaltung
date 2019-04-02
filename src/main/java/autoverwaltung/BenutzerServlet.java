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

import dhbwka.wwi.vertsys.javaee.vs_autoverwaltung.common.ejb.UserBean;
import dhbwka.wwi.vertsys.javaee.vs_autoverwaltung.common.jpa.User;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Vincent
 */
@WebServlet(urlPatterns = "/app/tasks/benutzerverwaltung/")
public class BenutzerServlet extends HttpServlet {
    
    @EJB
    UserBean userBean;
    
    User user;
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setAttribute("benutzer", this.userBean.getCurrentUser());
        request.getRequestDispatcher("/WEB-INF/tasks/benutzerverwaltung.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String vorname = request.getParameter("vorname");
        String nachname = request.getParameter("vorname");
        
    }
}