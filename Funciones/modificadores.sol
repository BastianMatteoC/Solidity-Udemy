pragma solidity 0.8.15;
pragma experimental ABIEncoderV2;

contract view_pure_payable{
    // Modificador de view
    string[] listaAlumnos;
    function nuevoAlumno(string memory _alumno) public{
        listaAlumnos.push(_alumno);
    }
    function verAlumno(uint _posicion) public view returns(string memory){
        return listaAlumnos[_posicion];
    }
    uint x = 10;
    function sumarAx(uint _x) public view returns(uint){
        return x+_x;
    }

    // Modificador de pure
    function exponenciacion(uint _x, uint _y) public pure returns(uint){
        return _x**_y;
    }
    // Modificador de payable
    mapping(address => cartera) dineroCartera;
    struct cartera{
        string nombrePersona;
        address direccionPersona;
        uint dineroPersona;
    }
    function pagar(string memory _nombrePersona, uint _cantidad) public payable{
        cartera memory nuevaCartera;
        nuevaCartera = cartera(_nombrePersona, msg.sender, _cantidad);
        dineroCartera[msg.sender] = nuevaCartera;
    }

    function verSaldo() public view returns(cartera){
        return dineroCartera[msg.sender];
    }

}