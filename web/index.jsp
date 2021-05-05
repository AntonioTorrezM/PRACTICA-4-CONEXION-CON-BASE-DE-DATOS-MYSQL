<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Tareas"%>
<%@page import="java.util.List"%>
<%
List<Tareas> lista=(List<Tareas>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de tareas</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr><th>Id</th><th>Tarea</th><th>Prioridad</th>
                <th>Completado</th><th>Eliminar</th><th>Editar</th></tr>
            <c:forEach var="item" items="${lista}">
            <tr>
           <td>${item.id}</td>
           <td>${item.tarea}</td><c:if test="${item.prioridad==1}" var="r" ><td>Alta</td></c:if>
             <c:if test="${item.prioridad==2}" var="r" ><td>Media</td></c:if>
             <c:if test="${item.prioridad==3}" var="r" > <td>Baja</td></c:if>
            <c:if test="${item.completado==1}" var="r" ><td><input type="checkbox" checked></td></c:if>
            <c:if test="${item.completado==2}" var="r"><td><input type="checkbox" ></td></c:if>                       
                        <td><a href="MainController?op=eliminar&id=${item.id}" onclick="
                    return(confirm('desea eliminar??'))">Eliminar </a></td>
                        <td><a href="MainController?op=editar&id=${item.id}" onclick="
                    return(confirm('desea editar...'))" >Editar </a></td></tr>
            </c:forEach>
        </table>
    </body>
</html>
