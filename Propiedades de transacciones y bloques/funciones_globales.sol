pragma solidity 0.8.15; // Indicamos la versión de solidity que vamos a usar

contract funciones_globales{ // Creación del contrato
    // Funcion msg.sender
    function msgSender() public view returns (address) {
        return msg.sender;
    }
    //Funccion now
    function Now() public view returns (uint) {
        return now;
    }
    // Funcion block.coinbase
    function blockCoinbase() public view returns (address) {
        return block.coinbase;
    }
    //Funcion block.difficulty
    function blockDifficulty() public view returns (uint) {
        return block.difficulty;
    }
    //Funcion block.number
    function blockNumber() public view returns (uint) {
        return block.number;
    }
    //Funcion msg.sig
    function msgSig() public view returns (bytes4) {
        return msg.sig;
    }
    //Funcion tx.gasprice
    function txGasprice() public view returns (uint) {
        return tx.gasprice;
    }
}