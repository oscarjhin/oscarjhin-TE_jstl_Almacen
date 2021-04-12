<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="com.emergentes.modelo.GestorProductos"%>
<%
    if (session.getAttribute("product") == null)
    {
        GestorProductos objeto1 = new GestorProductos();
        
        objeto1.insertarProducto(new Producto(1, "Coca Cola",12.0,100));
        
        session.setAttribute("product", objeto1);
    }

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - Producto</title>
    </head>
    <body>
        <h1>Listado de productos</h1>
        
        <a href="Controller?op=nuevo">Nuevo Prodcuto</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.product.getLista()}">    
            <tr>
                <th>${item.id}</th>
                <th>${item.producto}</th>
                <th>${item.precio}</th>
                <th>${item.cantidad}</th>
                <th><a href="Controller?op=modificar&id=${item.id}">Editar</a></th>
                <th><a href="Controller?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></th>
            </tr>                           
            </c:forEach>        
        </table>
       
    </body>
</html>
