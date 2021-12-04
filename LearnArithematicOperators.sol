pragma solidity >= 0.7.0 < 0.9.0;

contract LearnArithematicOperators{
    
    function calculator() public view returns(uint){
        
        
        uint a = 5;
        uint b = 7;
        
        uint result;
        result = a % b;
        return result;    
    }
}