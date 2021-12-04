pragma solidity >= 0.7.0 < 0.9.0;

contract LearnComparisonOperator{
    
    
    uint a = 3;
    uint b = 5;
    
    function compare() public view {
        
        require(a == b,"That is false");
    
    }
}