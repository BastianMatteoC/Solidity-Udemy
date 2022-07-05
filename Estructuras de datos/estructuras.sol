pragma solidity 0.8.15;

contract estructuras{
    // Cliente de una pagina web de pago

    struct Cliente{
        uint id;
        string name;
        string dni;
        string mail;
        uint phone_number;
        uint credit_number;
        uint secret_number;
    }

    // Declaramos una variable de tipo cliente
    Cliente cliente_1 = Cliente(1, "Juan", "12345678", "123@gmail.com", 12345678, 12345678, 12345678);



    // Amazon (Cualquier pagina de compra y venta de productos)
    struct producto{
        string nombre;
        uint precio;
    }
    // Declaramos una variable de tipo producto
    producto producto_1 = producto("Laptop", 1000);
    producto producto_2 = producto("Mouse", 50);
    producto producto_3 = producto("Teclado", 100);

    // Proyecto cooperativo de ONG's para ayudar en diversas causas
    struct ONG{
        address ong;
        string nombre;
    }
    // Declaramos una variable de tipo ONG
    ONG ONG_1 = ONG(0x0, "ONG 1");
    ONG ONG_2 = ONG(0x0, "ONG 2");
    ONG ONG_3 = ONG(0x0, "ONG 3");


    struct Causa{
        uint id;
        string nombre;
        uint precio_objetivo;
    }
    // Declaramos una variable de tipo Causa
    Causa causa_1 = Causa(1, "Causa 1", 1000);
    Causa causa_2 = Causa(2, "Causa 2", 2000);
    Causa causa_3 = Causa(3, "Causa 3", 3000);
    
}