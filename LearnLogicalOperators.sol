pragma solidity >= 0.7.0 < 0.9.0;

contract LearnLogicalOperators{
    
    uint a = 4;
    uint b = 5;
    
    function logic() public view returns(uint){
        
        
        uint result = 0;
        
        if(a < b || a == 4){
            
            
            result = a + b;
        }
        
        return result;
    }
}