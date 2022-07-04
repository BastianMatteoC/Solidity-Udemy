pragma solidity 0.8.15; // Version de solidity

contract ejEnumeraciones{
    // Enumeración de interruptor
    enum estadoInterruptor{Encendido, Apagado}

    // Variable de tipo enum
    estadoInterruptor state;

    function encender() public{ // Función que enciende el interruptor
        state = estadoInterruptor.Encendido;
    }

    // Función que cambia el estado del interruptor
    function cambiarEstado() public{
        if(state == estadoInterruptor.Encendido){
            state = estadoInterruptor.Apagado;
        }else{
            state = estadoInterruptor.Encendido;
        }
    }
}