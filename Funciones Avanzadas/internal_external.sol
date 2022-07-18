pragma solidity 0.8.15;

contract comida{
    struct plato{
        string nombre;
        string ingredientes;
        uint tiempo;
    }
    // Declaramos un array dinamico de platos
    plato [] platos;
    // Relacionamos con un mapping el nombre del plato con sus ingredientes
    mapping(string => string) ingredientes;
    // Funcion nuevo plato, nos va permitir dar de alta un nuevo plato
    function nuevoPlato(string memory _nombre, string memory _ingredientes, uint _tiempo)internal{
        platos.push(plato(_nombre, _ingredientes, _tiempo));
        ingredientes[_nombre] = _ingredientes;
    }
    function IngredientesFuncion(string memory _nombre)internal view returns(string memory){
        return ingredientes[_nombre];
    }
}
contract sandwich is comida{
    function sandwitchAlta(string memory _ingredientes, uint _tiempo) external{
        nuevoPlato("Sandwich", _ingredientes, _tiempo);
    }
    function verIngredientes() external view returns(string memory){
        return IngredientesFuncion("Sandwich");
    }
}