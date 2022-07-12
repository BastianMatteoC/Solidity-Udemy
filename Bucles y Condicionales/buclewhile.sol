pragma solidity 0.8.15;

contract bucleWhile {
    // Sumar los numeros impares menores o iguales a 100
    function sumaImpares() public pure returns (uint256) {
        uint256 suma = 0;
        uint256 contador = 1;
        while (contador < 100) {
            if (contador % 2 != 0) {
                suma += contador;
            }
            contador++;
        }
        return suma;
    }

    // Esperar 5 segundos
    uint256 tiempo;

    function FijarTiempo() public {
        tiempo = now;
    }

    function Esperar() public view returns (bool) {
        while (now < tiempo + 10 seconds) {
            return false;
        }
        return true;
    }

    // Devolver el siguiente numero primo, a partir del numero que se le introduce a la funcion
    // un numero primo es aquel que es divisible entre 1 y el mismo
    function siguientePrimo(uint _p) public pure returns(uint){
        uint contador = _p + 1;
        while(true){
            // Comprobamos si contador es primero
            uint aux = 2;
            bool primo = true;
            while(aux < contador){
                if (contador % aux == 0){
                    primo = false;
                    break;
                }
                aux++;
            }
            if(primo == true){
                break;
            }
            contador++;
        }
        return contador;
    }
}