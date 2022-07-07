pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;
contract Arrays{
    // Array de enteros de longitud fija con 5 posiciones
    uint[5] public array_enteros = [1,2,3];

    //Array de enteros de 32 bits de longitud fija con 7 posiciones
    uint32[7] public array_enteros_32bits;

    //Array de strings de longitud fija con 15 posiciones
    string[15] public array_strings;

    // Array dinamico de enteros
    uint [] public array_enteros_variable;

    // Array dinamico de tipos de datos complejos
    struct Persona{
        string nombre;
        uint edad;
    }
    Persona[] public array_personas;

    // Modificar Array_enteros_variable, esta función lo que hará es que al pasar el numero, este se añadirá al final del array
    function modificarArray(uint _numero) public{
        array_enteros_variable.push(_numero);
    }

    // Modificar Array_personas, esta función lo que hará es que al pasar el nombre, este se añadirá al final del array
    function modificarArrayPersonas(string _nombre, uint _edad) public{
        array_personas.push(Persona(_nombre, _edad));
    }

    // Acceder a una posicion del array
    function accederArray(uint _posicion) public view returns (uint){
        return array_enteros[_posicion];
    }
}