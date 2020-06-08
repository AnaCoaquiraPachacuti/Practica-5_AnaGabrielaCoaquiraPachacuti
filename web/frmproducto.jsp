<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:if test="${ producto.id == 0}">Nuevo</c:if>
            <c:if test="${ producto.id != 0}">Editar</c:if>
            Registro
        </h1>
        <form action="Inicio" method="POST">
            <input type="hidden" name="id" value="${producto.id}"/>
            <label>Descripcion :</label>
            <br><textarea name="descripcion">${producto.descripcion}</textarea>
            <br><br>
            <label>stock : </label>
            <input type="number" name="descripcion" value="${producto.stock}" />
            <br><br>
            <input type="submit" value="Enviar"/>
            
         </form>
    </body>
</html>
