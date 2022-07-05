pragma solidity 0.8.15;

contract public_private_internal{
    // Modificador public
    uint public mi_entero = 45;
    string public mi_string = "Bastian";
    address public owner;

    constructor() public{
        owner = msg.sender;
    }

    // Modificador private
    uint private mi_entero_privado = 45;
    bool private flag = true;

    function test(uint _k) public{
        mi_entero_privado = _k;
    }

    // Modificador internal
    bytes32 internal hash = keccak256(abi.encodePacked("testing"));
    address internal direccion = 0x9CF098507991Dbe0f291BE66bc07E7335E3dDD18;
}