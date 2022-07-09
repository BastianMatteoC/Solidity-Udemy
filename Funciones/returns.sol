pragma solidity 0.8.15;

contract valoresDeRetorno{
    //Funcion que nos devuelva un saludo
    function saludos() public returns (string memory){
        return "Hola";
    }
    //Funcion calcula el resultado de una multiplicacion
    function multiplicacion(uint a, uint b) public returns (uint){
        return a * b;
    }
    //Funcion que nos dice si el numero es par o si es impar
    function esPar_esImpar(uint a) public returns (bool){
        bool flag;
        if(a % 2 == 0){
            flag = true;
        }else{
            flag = false;
        }
        return flag;
    }
    //Funcion que nos devuelve el cociente y el recibo de una division
    // Ademas de una variable booleana que es true si el recibo es 0 y false en caso contrario
        function division(uint a, uint b) public returns (uint, uint, bool){
        uint q = a / b;
        uint r = a % b;
        bool multiplo = false;
        if(r == 0){
            multiplo=true;
        }
        return (q, r, multiplo);
    }

    // Practica para el manejo de los valores devueltos
    function numeros() public returns(uint, uint , uint , uint , uint, uint){
        return (1, 2, 3, 4, 5, 6);
    }

    // Asignacioon multiple

    function todosLosValores() public{
        // Declaramos las variables donde se guardan los valores de retorno de la funcion numeros
        uint a = 1;
        uint b = 2;
        uint c = 3;
        uint d = 4;
        uint e = 5;
        uint f = 6;
        // realizamos la asigacion multiple
        (a,b,c,d,e,f) = numeros();
    }

    function ultimoValor() public{
        (,,,,,uint ultimo) = numeros(); // Guardamos el ultimo valor de la funcion numeros
    }
}

