pragma solidity >= 0.7.0 < 0.9.0;

//base contract
abstract contract Calculator{
    
    function add(uint a, uint b) public virtual view returns(uint);
}


//dervived contract
contract Test is Calculator{
    
    function add(uint a, uint b) public override view returns(uint){
        
        return a + b;
    }
}