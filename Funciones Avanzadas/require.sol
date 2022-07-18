pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;

contract Require{
    // Funcion que verifique la contraseña
    function password(string memory _pass) public pure returns (string memory){
        require(keccak256(abi.encodePacked(_pass)) == keccak256(abi.encodePacked("12345")), "Incorrecta");
        return "correcta";
    }

    // Funcion para pagar
    uint tiempo = 0;
    uint public cartera = 0;
    function pay(uint _amount) public returns(uint){
        require(block.timestamp > tiempo + 5 seconds, "Aun no puedes pagar");
        tiempo = block.timestamp;
        cartera += _amount;
        return cartera;
    }

    // Funcion con una lista

    string [] nombres;
    function nuevoNombre(string memory _nombre) public{
        for(uint i = 0; i < nombres.length; i++){
            require(keccak256(abi.encodePacked(_nombre))!= keccak256(abi.encodePacked(nombres[i])), "El nombre ya existe");
        }
        nombres.push(_nombres);
    }
}