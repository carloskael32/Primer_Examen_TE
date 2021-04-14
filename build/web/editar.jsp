<%-- 
    Document   : editar
    Created on : 13-04-2021, 12:11:57 AM
    Author     : Carlos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Editar</title>
    </head>
    <body>
        <div align="center">
        
        <h1>
            <c:if test ="${requestScope.op == 'nuevo'}" var="res" scope="request">
                Registro de 
            </c:if>

            <c:if test ="${requestScope.op == 'modificar'}" var="res" scope="request">
                Modificar
            </c:if>
            Vacunas

        </h1>

        <jsp:useBean id="miVacuna" scope="request" class="com.emergentes.modelo.Vacuna" />

        <form action="Controller" method="post">

            <table>
                <tr>
                    <td>Id</td>
                    <td> <input type="text" name="id"
                                value="<jsp:getProperty name="miVacuna" property="id"/>" />
                    </td>                       
                </tr>

                <tr>
                    <td>Nombre</td>
                    <td> <input type="text" name="nombre"
                                value="<jsp:getProperty name="miVacuna" property="nombre"/>" />
                    </td>
                </tr>
                
                <tr>
                    <td>Peso</td>
                    <td> <input type="text" name="peso"
                                value="<jsp:getProperty name="miVacuna" property="peso"/>" />
                    </td>
                </tr>
                
                <tr>
                    <td>Talla</td>
                    <td> <input type="text" name="talla"
                                value="<jsp:getProperty name="miVacuna" property="talla"/>" />
                    </td>
                </tr>
                <tr>
                    <td>Vacuna</td>
                    <td>
                        <select name="vacuna">
                            <option value="si"
                                    <c:if test="${miVacuna.vacuna == 'si'}"
                                          var="res" scope="request">
                                        selected
                                    </c:if>
                                    >si</option>

                            <option value="no"
                                    <c:if test="${miVacuna.vacuna == 'no'}"
                                          var="res" scope="request">
                                        selected
                                    </c:if>
                                    >no</option>

                           
                        </select>


                    </td>

                </tr>
                <tr>
                    <td>
                        <input type="hidden" name="opg" value="${requestScope.op}"/>
                        <input type="hidden" name="op" value="grabar"/>

                    </td>
                    <td>
                        <input type="submit" value="Enviar"/>
                        <a type="button" href="index.jsp">Volver</a>
                        
                    </td>

                </tr>


            </table>

        </form>

</div>
    </body>
</html>