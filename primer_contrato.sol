pragma solidity >=0.8.15; // Version de solidity
import "./SafeMath.sol";
import "./ERC20.sol";

contract nombre_contrato { // Creación del contrato

    address owner; // Creación de la variable owner, para la persona que despliegue el contrato.
    ERC20Basic token; // Creación de la variable token, para el contrato ERC20Basic.

    constructor() public {
        owner = msg.sender; // Asignación de la persona que despliegue el contrato.
        token = new ERC20Basic(1000000); // Asignación de la cantidad de tokens.
    }
}
