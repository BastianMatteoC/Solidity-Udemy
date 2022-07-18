pragma solidity 0.8.15;

library operaciones{
    function division(uint a, uint b) public pure returns(uint) {
        require(b != 0, "Division by zero");
        return a / b;
    }
    function multiplicacion(uint a, uint b) public pure returns(uint) {
        if(a == 0 || b == 0) {
            return 0;
        }else{
            return a * b;
        }
    }
}

contract calculos{
    using operaciones for uint;

    function Calculos(uint a, uint b) public pure returns(uint, uint){
        uint q = a.division(b); // Esto lo que está haciendo es usar la funcion division de la libreria operaciones
        uint m = a.multiplicacion(b); // Esto lo que está haciendo es usar la funcion multiplicacion de la libreria operaciones
        return (q,m);
    }
}