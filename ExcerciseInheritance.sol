pragma solidity >= 0.7.0 < 0.9.0;

contract C{
    
   uint private data;
    
   uint public info;
    
    constructor() public{
        
        info = 10;
    }
    
    function increment(uint input) private pure returns(uint){
        
        return input + 1;
    }
    
    function updateData(uint _data) public{
        
        data = _data;
    }
    
    function getData() public view returns(uint){
        
        return data;
    }
    
    function compute(uint a, uint b) public pure returns(uint){
        
        return a + b;
    }
}

contract D{
    
    C c = new C();
    
    function readInfo() public view returns(uint){
        
        return c.info();
    }
}
    
contract E is C{
    
    uint private result;
    
    C private c;
    
    constructor(){
        
        c = new C();
    }
    
    function getComputeResult() public{
        
        result = c.compute(23,5);
    }
    
    function getResult() public view returns(uint){
        
        return result;
    }
    
    function getInfo() public view returns(uint){
        
        return c.info();
    }
    
}   