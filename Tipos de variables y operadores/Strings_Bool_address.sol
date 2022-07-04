pragma solidity 0.8.15; // Version de solidity
pragma experimental ABIEncoderV2; // Version de ABIEncoderV2
contract Variables{
    // Variables de tipo string (cadenas de texto)
    string mi_primer_string;
    string public saludo = "hola"; // Agregamos el public para que sea visible desde cualquier lugar y nos permita consultar el valor de la variable
    string public string_vacio = "";

    // Variables booleanas
    bool mi_primer_bool = true;
    bool mi_segundo_bool = false;

    // Variables bytes
    bytes32 mi_primer_bytes32 = "0x1234567890";
    string public nombre = "Bastian";
    bytes32 hash = keccak256(abi.encodePacked(nombre));
    
    bytes4 public identificador;
    function ejemploBytes4() public{
        identificador = msg.sig;
    }
    // Variables address
    address mi_primer_address;
    address public mi_segundo_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // Direccion de la cuenta de prueba
}