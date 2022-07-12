pragma solidity 0.8.15;

contract bucleFor{
    // Suma de los 100 primeros numeros a partir del numero introducido
    function suma(uint256 _numero) public pure returns (uint256){
        uint256 suma = 0;
        for(uint256 i = _numero; i < (100+_numero); i++){
            suma += _numero;
        }
        return suma;
    }
    // Buscar dentro de un array
    address [] direcciones;
    function asociar()public{
        direcciones.push(msg.sender);
    }
    function buscar(address _direccion)public returns (bool){
        for(uint256 i = 0; i < direcciones.length; i++){
            if(msg.sender ==  direcciones[i]){
                return true;
            }
        }
        return false;
    }

    // Doble for: Sumar los 10 primeros factoriales
    // 3! = 3*2*1
    // n! = n*(n-1)*(n-2)*(n-3)
    function SumaFactorial() public pure returns(uint){
        uint suma = 0;
        for(uint i = 1; i <= 10; i++){
            uint factorial = 1;
            for(uint j = 2; j <= i; j++){
                factorial *= j;
            }
            suma += factorial;
        }
        return suma;
    }
}