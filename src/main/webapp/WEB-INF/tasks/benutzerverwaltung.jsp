<%-- 
    Document   : benutzerverwaltung
    Created on : 01.04.2019, 10:54:01
    Author     : Vincent
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib tagdir="/WEB-INF/tags/templates" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<template:base>

    <jsp:attribute name="head">
        <link rel="stylesheet" href="<c:url value="/css/task_edit.css"/>" />
    </jsp:attribute>

    <jsp:attribute name="menu">
        <div class="menuitem">
            <a href="<c:url value="/app/dashboard/"/>">Übersicht</a>
        </div>

        <div class="menuitem">
            <a href="<c:url value="/app/tasks/list/"/>">Alle Fahrzeuge</a>
        </div>
    </jsp:attribute>

    <jsp:attribute name="content">
        <form method="post" class="stacked">
            <div class="card" style="width:50%">
                <div class="card-body">
                    <%-- CSRF-Token --%>
                    <input type="hidden" name="csrf_token" value="${csrf_token}">

                    <%-- Eingabefelder --%>
                    <label for="benutzername">Benutzername:</label>
                    <div class="side-by-side">
                        <input type="text" name="benutzername" value="${benutzer.username}">
                    </div>

                    <label for="vorname">Vorname:</label>
                    <div class="side-by-side">
                        <input type="text" name="vorname" value="${benutzer.vorname}">
                    </div>

                    <label for="nachname">Nachname:</label>
                    <div class="side-by-side">
                        <input type="text" name="nachname" value="${benutzer.nachname}">
                    </div>
                    
                    <br>
                    <br>
                    <%-- Button zum Sichern --%>
                    <div class="side-by-side">
                        <button type="submit" class="btn btn-primary">
                            Sichern
                        </button>
                    </div>
                </div>
            </div>


        </form>
    </jsp:attribute>
</template:base>
