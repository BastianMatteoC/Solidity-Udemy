pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;
contract funciones{
    
    // Añadir dentro de un array de direcciones, la dirección de la persona que llame a la funcion

    address[] direcciones;

    function nuevaDireccion() public{
        direcciones.push(msg.sender);
    }

    // Computar el hash de los datos proporcionados como parametro
    bytes32 public hash;
    function Hash(string memory _datos)public{
        hash = keccak256(abi.encodePacked(_datos));
    }
    // Declaramos un tipo de datos complejo, que es comida
    struct comida{
        string nombre;
        string ingredientes;
    }

    // Vamos a crear un tipo de dato complejo comida
    comida public hamburguesa;
    function hamburguesas(string _ingredientes) public{
        hamburguesa = comida("hamburguesa", _ingredientes);
    }

    // Declaramos un tipo de dato complejo, que es alumno.
    struct alumno{
        string nombre;
        address direccion;
        uint edad;
    }

    // Calcular el hash del alumno mediante el metodo keccak256
      bytes32 public hash_Id_alumno;
    function Hash_Id_alumno(string _nombre, address _direccion, uint _edad) private {
        hash_Id_alumno = keccak256(abi.encodePacked(_nombre, _direccion, _edad));
    }
    //Guardamos con la funcion publica dentro de un lista de alumnos
    alumno[] public lista;
    mapping (string => bytes32) alumnos;
    function nuevoAlumno(string memory _nombre, uint _edad) public{
        lista.push(alumno(_nombre, msg.sender, _edad));
        Hash_Id_alumno(_nombre, msg.sender, _edad);
        alumnos[_nombre] = hash_Id_alumno;
    }
}