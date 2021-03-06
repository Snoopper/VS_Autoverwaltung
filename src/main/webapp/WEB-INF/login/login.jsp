<%-- 
    Copyright © 2018 Dennis Schulmeister-Zimolong

    E-Mail: dhbw@windows3.de
    Webseite: https://www.wpvs.de/

    Dieser Quellcode ist lizenziert unter einer
    Creative Commons Namensnennung 4.0 International Lizenz.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib tagdir="/WEB-INF/tags/templates" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<template:base>
    <jsp:attribute name="title">
        Login
    </jsp:attribute>

    <jsp:attribute name="head">
        
    </jsp:attribute>

    <jsp:attribute name="menu">
        <div class="menuitem">

        </div>
    </jsp:attribute>

    <jsp:attribute name="content">
        <div class="container">
            <form action="j_security_check" method="post" class="stacked">
                <div class="card" style="width:50%">
                    <div class="card-body">
                        <div><i class="fas fa-user" style="font-size: 50px;padding:25px 30px 25px 30px;background: #eee;border-radius: 100%;"></i></div>
                        <%-- Eingabefelder --%>
                        <label for="j_username">
                            Benutzername:
                            <span class="required">*</span>
                        </label>
                        <br>
                        <input type="text" name="j_username">
                        <br>
                        <label for="j_password">
                            Passwort:
                            <span class="required">*</span>
                        </label>
                        <br>
                        <input type="password" name="j_password">
                        <br>
                        <br>
                        <%-- Button zum Abschicken --%>
                        <button type="submit" class="btn btn-primary">Einloggen</button>
                        <br>
                        <br>
                        <p>
                            Noch keinen Account?
                        </p>
                        <a href="<c:url value="/signup/"/>">Hier registrieren</a>
                    </div>
                </div>
            </form>
        </div>
    </jsp:attribute>
</template:base>