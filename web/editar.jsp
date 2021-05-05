<%@page import="com.emergentes.modelo.Tareas" %>
<%
Tareas tarea= (Tareas)request.getAttribute("tarea");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Coloque Datos</h1>
        <form action="MainController" method="post">
        <table>
            <input type="hidden" name="id" value="${tarea.id}">
            <tr>
                <td>Tarea</td><td><input type="text" name="tarea" value="${tarea.tarea}"></td>
            </tr>
            <tr>
                <td>Prioridad</td>
                <td>
                <input type="checkbox" name="prioridad" value="1" var="r" scope="request">Alta<br>
                <input type="checkbox" name="prioridad" value="2" var="r" scope="request">Media<br>
                <input type="checkbox" name="prioridad" value="3" var="r" scope="request">Baja
                </td>
            </tr>
            <tr>
                <td>Completado</td>
                <td><input type="checkbox" name="completado" value="1" var="r" 
                           scope="request">Concluido<br>
                <input type="checkbox" name="completado" value="2" var="r" scope="request">Pendiente
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Enviar"></td></tr>
        </table>
        </form>
    </body>
</html>
