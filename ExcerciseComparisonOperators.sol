pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseComparisonOperator{
    
    
    uint a = 323;
    uint b= 54;
    
    function compare() public view{
        
        require(a<=b,"This comparison is false");
    }
}