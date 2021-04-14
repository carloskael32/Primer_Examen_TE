
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.GestorVacunas" %>
<%@page import="com.emergentes.modelo.Vacuna" %>

<%
    if (session.getAttribute("agenda") == null){
        GestorVacunas objeto1 = new GestorVacunas();
        
        objeto1.insertarVacuna(new Vacuna(1,"Brunito Diaz",25,1.40,"si" ));
        objeto1.insertarVacuna(new Vacuna(2,"Juancito Pinto",30,1.52,"no" ));
        
        session.setAttribute("agenda", objeto1);
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Vacunas</title>
    </head>
    <body>
        
        <br>
        
        <div align="center">
            
            <table border="1">
                <tr>
                    <td>PRIMER PARCIAL TEM-742</td>
                </tr>
                <tr>
                    <td>Nombre: Carlos Alberto Mamani Rondo</td>
                </tr>
                <tr>
                    <td>Carnet: 4868248 Lp.</td>
                </tr>
            </table>
        
          
            
            
        
        <h1>Lista de Vacunas</h1>
        <a href ="Controller?op=nuevo">Nuevo</a>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
                
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.peso}</td>
                    <td>${item.talla}</td>
                    <td>${item.vacuna}</td>
                    <td> <a href="Controller?op=modificar&id=${item.id}" >Modificar</a> </td>
                    <td> <a href="Controller?op=eliminar&id=${item.id}" >Eliminar</a> </td>
                </tr>
                
                
            </c:forEach>
            
        </table>
        </div>
    </body>
</html>
