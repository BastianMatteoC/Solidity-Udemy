pragma solidity 0.8.15;

contract operadores{
    // Operadores Matematicos
    uint a = 32;
    uint b = 16;

    uint public suma = a+b;
    uint public resta = a-b;
    uint public multiplicacion = a*b;
    uint public division = a/b;
    uint public modulo = a%b;
    uint public potencia = a**b;
    
    // Comparar enteros

    bool public test_1 = a > b;
    bool public test_2 = a < b;
    bool public test_3 = a >= b;
    bool public test_4 = a <= b;
    bool public test_5 = a == b;
    bool public test_6 = a != b;

    // Operadores Booleanos

    // Creiterio de divisibilidad entre 5: SI el numero termina en 0 o en 5

    function divisibilidad (uint _k) public view returns (bool){
        uint ultima_cifra = _k % 10;
        if(ultima_cifra == 0 || ultima_cifra == 5){
            return true;
        }else{
            return false;
        }
    }

    function divisibilidadV2 (uint _k) public view returns (bool){
        uint ultima_cifra = _k % 10;
        if((ultima_cifra !=0)&& (ultima_cifra !=5)){
            return true;
        }else{
            return false;
        }
    }
}