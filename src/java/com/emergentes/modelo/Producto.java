
package com.emergentes.modelo;

public class Producto 
{
    private int id;
    private String producto;
    private Double precio;
    private int cantidad;

    public Producto() 
    {
        id=0;
        producto="";
        precio=0.0;
        cantidad=0;
    }

    public Producto(int id, String producto, Double precio, int cantidad) {
        this.id = id;
        this.producto = producto;
        this.precio = precio;
        this.cantidad = cantidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }


   

    
    
    
}
