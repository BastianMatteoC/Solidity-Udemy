pragma solidity 0.8.15;

contract Modifer{
    // Ejemplo de solo propietario del contrato puede ejecutar una función
    address public owner;
    constructor() public{
        owner = msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender == owner, "Solo el propietario puede ejecutar esta funcion");
        _;
    }
    function ejemplo1() public onlyOwner(){
        // Codigo de la funcion para el propietario del contrato
    }

    struct cliente{
        address direccion;
        string nombre;
    }
    mapping (string => address) clientes;
    function altaCliente(string memory _nombre) public{
        clientes[_nombre] = msg.sender;
    }
    modifier soloClientes(string memory _nombre){
        require(clientes[_nombre] == msg.sender, "Solo el cliente puede ejecutar esta funcion");
        _;
    }
    function ejemplo2(string memory _nombre) public soloClientes(_nombre){
        // logica de la funcion para los clientes
    }
    // Ejemplo de conducción

    modifier mayorDeEdad(uint _edadMinima, uint _edadUsuario){
        require(_edadUsuario >= _edadMinima, "No puedes conducir");
        _;
    }

    function conducir(_edadUsuario) public mayorDeEdad(18, _edadUsuario){
        // logica de la funcion para conducir
    }
}