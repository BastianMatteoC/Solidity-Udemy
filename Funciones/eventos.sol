pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;

contract Eventos{
    // Declaramos los eventos a utilizar
    event Evento1(string _nombrePersona);
    event Evento2(string _nombrePersona, uint _edad);
    event Evento3(string, uint, address, bytes32);
    event abortarMision();

    function emitirEvento1(string memory _nombrePersona) public {
        emit Evento1(_nombrePersona);
    }
    function emitirEvento2(string memory _nombrePersona, uint _edad) public {
        emit Evento2(_nombrePersona, _edad);
    }
    function emitirEvento3(string memory _nombrePersona, uint _edad) public {
        bytes32 hash_id = keccak256(abi.encodePacked(_nombrePersona, _edad, msg.sender));
        emit Evento3(_nombrePersona, _edad, msg.sender, hash_id);
    }
    function _abortarMision() public {
        emit abortarMision();
    }
}