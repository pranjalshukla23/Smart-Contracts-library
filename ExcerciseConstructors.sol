pragma solidity >= 0.7.0 < 0.9.0;

contract Base{
    
    uint data;
    
    constructor(uint _data) public{
        
        
        data = _data;
    }
}


contract Derived is Base{
    
    
    //invoking constructor of parent class and passing paramater to it 
    constructor() Base(5) public {}
    
    
    function getData() public view returns (uint){
        
        return data;
    }
}