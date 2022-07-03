pragma solidity 0.8.15; // Indicamos la versión de solidity que vamos a usar
pragma experimental ABIEncoderV2; // Indicamos que vamos a usar la versión de ABIEncoderV2
contract hash{
    //Computo del hash de un string
    function calcularHash(string memory _cadena) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }
    //Computo del hash de un string, un entero y una direccion
    function calcularHash2(string memory _cadena, uint _k, address _direccion) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }
    //Computo del hash de un string, un entero y una direccion mas otro string que no esta dentro de una variable
    function calcularHash3(string memory _cadena, uint _k, address _direccion) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion, "hola"));
    }

}