
<%@ page import="LSC.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'institution.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'institution.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'institution.city.label', default: 'City')}" />
                        
                            <g:sortableColumn property="state" title="${message(code: 'institution.state.label', default: 'State')}" />
                        
                            <g:sortableColumn property="country" title="${message(code: 'institution.country.label', default: 'Country')}" />
                        
                            <g:sortableColumn property="url" title="${message(code: 'institution.url.label', default: 'Url')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${institutionInstanceList}" status="i" var="institutionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${institutionInstance.id}">${fieldValue(bean: institutionInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "city")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "state")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "country")}</td>
                        
                            <td>${fieldValue(bean: institutionInstance, field: "url")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${institutionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
