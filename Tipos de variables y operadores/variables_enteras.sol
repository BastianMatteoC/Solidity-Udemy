pragma solidity 0.8.15; // Indicamos la versión de solidity que vamos a usar
 
contract enteros{
    // Variables enteras sin signo
    uint mi_primer_entero; // Declaración de la variable entera sin signo
    uint mi_primer_entero_inicializado = 3; // Declaración de la variable entera sin signo inicializada
    uint cota = 5000;


    // Variables enteras sin signo con un numero especifico de bits
    uint8 entero_8_bits;
    uint64 entero_64_bits = 7000;
    uint16 entero_16_bits;
    uint256 entero_256_bits;

    // Variables enteras con signo
    int mi_primere_entero_con_signo;
    int mi_numero = -32;
    int mi_entero_positivo = 65;

    // Variables enteras con signo con un numero especifico de bits
    int8 entero_8_bits_con_signo;
    int64 entero_64_bits_con_signo = -7000;
    int16 entero_16_bits_con_signo;
    int256 entero_256_bits_con_signo = 49332323;


}