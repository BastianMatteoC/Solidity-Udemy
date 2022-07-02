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


// Este es un comentario de una linea

/* Este es un bloque
de comentarios, en este
podemos especificar más de una linea 

Formato Estandar de comentarios en Solidity

   @title <titulo del contrato>
   @author <Autor del contrato>
   @notice <Explicar lo que hace el contrato o función>
   @dev <Detalles adicionales sobre el contrato o función>
   @param <nombre_parametro> <Describir para que sirve el parámetro>
   @return <valor_retorno> <Describir para que sirve el valor de retorno de una función>
*/