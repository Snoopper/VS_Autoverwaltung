<%-- 
    Copyright © 2018 Dennis Schulmeister-Zimolong

    E-Mail: dhbw@windows3.de
    Webseite: https://www.wpvs.de/

    Dieser Quellcode ist lizenziert unter einer
    Creative Commons Namensnennung 4.0 International Lizenz.
--%>
<%@tag pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@attribute name="title"%>
<%@attribute name="head" fragment="true"%>
<%@attribute name="menu" fragment="true"%>
<%@attribute name="content" fragment="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <title>VS_Autoverwaltung ${title}</title>
        
        <!-- https://pixabay.com/de/flach-design-symbol-icon-www-2126884/ -->
        <link rel="shortcut icon" href="<c:url value="/img/favicon2.png"/>">
        
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />         
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" >
        
        <link rel="stylesheet" href="<c:url value="/fontello/css/fontello.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/main.css"/>" />
        <link rel="stylesheet" href="<c:url value="/css/form.css"/>" />

        <jsp:invoke fragment="head"/>
    </head>
    <body>
        <%-- Kopfbereich --%>
        <header>
            <%-- Titelzeile --%>
            <div id="titlebar">
                <div class="appname">
                    <p>VS_Autoverwaltung</p>
                </div>
                <div class="content">
                    ${title}
                </div>
            </div>

            <%-- Menü --%>
            <div id="menubar">
                <jsp:invoke fragment="menu"/>

                <c:if test="${not empty pageContext.request.userPrincipal}">
                    <div class="menuitem">
                        <a href="<c:url value="/logout/"/>">Logout ${pageContext.request.userPrincipal.name}</a>
                    </div>
                </c:if>
            </div>
        </header>

        <%-- Hauptinhalt der Seite --%>
        <main>    
            <jsp:invoke fragment="content"/>
        </main>
    </body>
</html>