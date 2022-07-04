pragma solidity 0.8.15; // Version de solidity

 contract casteo{
    // Ejemplo de casteo de variables

    uint8 entero_8_bits = 42;
    uint64 entero_64_bits = 60000;
    uint entero_256_bits = 1000000;
    int16 entero_16_bits_signo = 156;
    int120 entero_120_bits_signo = -900000;
    int entero_256_bits_signo = 5000000;

    //casteo de las variables

    uint64 public casteo_1 = uint64(entero_8_bits); // casteo de uint8 a uint64
    uint64 public casteo_2 = uint64(entero_256_bits); // casteo de uint256 a uint64
    uint8 public casteo_3 = uint8(entero_16_bits_signo) // casteo de int16 a uint8
    int public casteo_4 = int(entero_120_bits_signo); // casteo de int120 a int
    int public casteo_5 = int(entero_256_bits_signo); // casteo de int256 a int

    function convertir(uint8 _k) public view returns (uint64){ // casteo de uint8 a uint64
        return uint64(_k);
    }


 }