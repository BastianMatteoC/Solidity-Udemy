pragma solidity 0.8.15; // Version de solidity

contract tiempo{
    // Unidades de tiempo
    uint public tiempo_actual = now;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public un_dia = 1 days;
    uint public una_semana = 1 weeks;
    // Operamos con las unidades de tiempo
    function masSegundos() public view returns (uint){
        return now + 50 seconds;
    }

     function masHoras() public view returns (uint){
        return now + 1 hours;
    }
    function masDias() public view returns (uint){
        return now + 1 days;
    }
    function masSemanas() public view returns (uint){
        return now + 1 weeks;
    }

}