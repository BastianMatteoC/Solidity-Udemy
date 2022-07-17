pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;

contract Banco {
    //Definimos un tipo de dato complejo
    struct cliente {
        string nombre;
        address direccion;
        uint256 dinero;
    }
    // Implementamos un mapping que nos relaciona el nombre del cliente con el tipo de dato del cliente
    mapping(string => cliente) clientes;

    // Implementamos una funcion que nos permita agregar un cliente
    function agregarCliente(string memory _nombre) public {
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }
}

contract Cliente is Banco {
    // Funcion que permite dar de alta un cliente
    function altaCliente(string memory _nombre) public {
        agregarCliente(_nombre);
    }

    // Funcion que nos permite agregar dinero
    function agregarDinero(string memory _nombre, uint256 _cantidad) public {
        clientes[_nombre].dinero += _cantidad;
    }

    // Funcion que nos permite retirar dinero
    function retirarDinero(string memory _nombre, uint256 _cantidad)
        public
        returns (bool)
    {
        bool flag = true;
        if (:weqclientes[_nombre].dinero >= _cantidad) {
            clientes[_nombre].dinero -= _cantidad;
        } else {
            flag = false;
        }
        return flag;
    }

    // Funcion que nos permite consultar el saldo de un cliente
    function consultarSaldo(string memory _nombre)
        public
        view
        returns (uint256)
    {
        return clientes[_nombre].dinero;
    }
}
