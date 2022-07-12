pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;

contract sentencia_if {
    // Funcion que devuelve un numero ganador
    function probarSuerte(uint256 _numero) public pure returns (bool) {
        bool ganador;
        if (_numero == 100) {
            ganador = true;
        } else {
            ganador = false;
        }
        return ganador;
    }

    // Funcion que calcula el valor absoluto de un numero
    function absoluto(int256 _numero) public pure returns (int256) {
        int256 valorAbsoluto;
        if (_numero < 0) {
            valorAbsoluto = -_numero;
        } else {
            valorAbsoluto = _numero;
        }
        return valorAbsoluto;
    }

    // Devolver true si el numero introducido es par y tiene 3 cifras
    function esPar(int256 _numero) public pure returns (bool) {
        bool esPar;
        if (_numero % 2 == 0 && _numero > 99 && _numero < 1000) {
            esPar = true;
        } else {
            esPar = false;
        }
        return esPar;
    }

    // Votacion en donde habrá 3 candidatos: Joan, Gabriel y Maria
    function votar(string memory _candidato)
        public
        pure
        returns (string memory)
    {
        string memory mensaje;
        if (
            keccak256(abi.encodePacked(_candidato)) ==
            keccak256(abi.encodePacked("Joan"))
        ) {
            mensaje = "El candidato es: Joan";
        } else {
            if (
                keccak256(abi.encodePacked(_candidato)) ==
                keccak256(abi.encodePacked("Gabriel"))
            ) {
                mensaje = "El candidato es: Gabriel";
            } else {
                if (
                    keccak256(abi.encodePacked(_candidato)) ==
                    keccak256(abi.encodePacked("Maria"))
                ) {
                    mensaje = "El candidato es: Maria";
                } else {
                    mensaje = "El candidato no existe";
                }
            }
        }
    }
}
