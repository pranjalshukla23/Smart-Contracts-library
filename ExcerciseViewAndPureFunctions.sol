pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseViewAndPureFuntions{
    
    uint value = 10;
    
    
    function multiply() external pure returns(uint){
        
        return 3 * 7;
    }
    
    function valuePlusThree() external view returns(uint){
        
        return value + 3;
    }
}