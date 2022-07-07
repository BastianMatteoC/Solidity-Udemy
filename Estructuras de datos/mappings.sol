pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;
contract mappings{
    // Declaramos un mapping para elegir un numero
    mapping (address => uint) public elegirNumero;

    function elegirNumeroFuncion(uint _numero) public{
        elegirNumero[msg.sender] = _numero;
    }
    function consultarNumero() public view returns (uint){
        return elegirNumero[msg.sender];
    }

    // Declaramos un mapping que relaciona el nombre de una persona con su cantidad de dinero
    mapping (string => uint) public cantidadDinero;
    
    function Dinero(string _nombre, uint _cantidad)public {
        cantidadDinero[_nombre] = _cantidad;

    }
    function consultarDinero(string _nombre) public view returns (uint){
        return cantidadDinero[_nombre];
    }
    // Ejemplo de mapping con un tipo de dato complejo
    struct persona{
        string nombre;
        uint edad;
    }
    mapping (uint => persona) public personas;
    function dni_person(uint _numeroDni, string _nombre, uint _edad)public{
        personas[_numeroDni]= persona(_nombre, _edad);
    }
    function consultarPersona(uint _numeroDni) public view returns (persona){
        return personas[_numeroDni];

    }
}