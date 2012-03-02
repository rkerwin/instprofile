

<%@ page import="LSC.Institution" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${institutionInstance}">
            <div class="errors">
                <g:renderErrors bean="${institutionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${institutionInstance?.id}" />
                <g:hiddenField name="version" value="${institutionInstance?.version}" />
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="persons"><g:message code="institution.persons.label" default="Persons" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'persons', 'errors')}">
                                    
<ul>
<g:each in="${institutionInstance?.persons?}" var="p">
    <li><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="person" action="create" params="['institution.id': institutionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'person.label', default: 'Person')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="products"><g:message code="institution.products.label" default="Products" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: institutionInstance, field: 'products', 'errors')}">
                                    
<ul>
<g:each in="${institutionInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="product" action="create" params="['institution.id': institutionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
