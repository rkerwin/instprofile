

<%@ page import="LSC.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${institutionInstance}">
            <div class="errors">
                <g:renderErrors bean="${institutionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="institution.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${institutionInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="institution.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${institutionInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="institution.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" value="${institutionInstance?.state}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="country"><g:message code="institution.country.label" default="Country" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'country', 'errors')}">
                                    <g:textField name="country" value="${institutionInstance?.country}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url"><g:message code="institution.url.label" default="Url" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'url', 'errors')}">
                                    <g:textField name="url" value="${institutionInstance?.url}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="factBookUrl"><g:message code="institution.factBookUrl.label" default="Fact Book Url" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'factBookUrl', 'errors')}">
                                    <g:textField name="factBookUrl" value="${institutionInstance?.factBookUrl}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
