<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>PRODUCTOS</h1>
        <p><a href="Inicio?action=add">Nuevo registro</a></p>
        <table border="1">
            <tr>
                 <th>Id</th>
                 <th>Descripcion</th>
                 <th>Stock</th>
                 <th></th>
                 <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                   <th>${item.id}</th>
                   <th>${item.descripcion}</th>
                   <th>${item.stock}</th>
                   <th><a href="Inicio?action=edit&?id=${item.id}">Editar</a></th>
                   <th><a href="Inicio?action=delete&?id=${item.id}">Eliminar</a></th>
                 
                </tr>
            
            </c:forEach>
        </table>
    </body>
</html>
