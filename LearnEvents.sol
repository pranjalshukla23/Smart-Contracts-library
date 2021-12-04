pragma solidity >=0.7.0 < 0.9.0;

contract LearnEvents{
    
    event newTrade(uint indexed date, address from, address indexed to, uint indexed amount);
    
    function trade(address to, uint amount) external{
        
        emit newTrade(block.timestamp,msg.sender,to,amount);
    }
}