pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseFunctionOverloading{
    
    function sum(uint x, uint y) public pure returns(uint){
        
        return x + y;
    }
    
    function sum(uint x, uint y, uint z) public pure returns(uint){
        
        return x + y + z;
    }
    
    function getFirstSum() public pure returns(uint){
        
      return sum(10,20);
    }
    
    function getSecondSum() public pure returns(uint){
        
        return sum(10,20,30);
        
        
    }
}