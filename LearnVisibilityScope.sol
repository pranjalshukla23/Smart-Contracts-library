pragma solidity >= 0.7.0 < 0.9.0;

contract C{
    
    uint public data = 10; //state variable
    
    function x() external pure returns(uint){
        
        
        uint newData = 25;
        
        return newData;
    }
    
    function y() public view returns(uint){
        
        return data;
    }
    
    
}