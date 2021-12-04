pragma solidity >= 0.7.0 < 0.9.0;

contract LotteryContract{
    
    uint public minimumAmount;
    address payable [] participants;
    uint total;
    
    
    constructor(uint _amount) public{
        
        minimumAmount = _amount;
        total = 0;
    }
    
    function participate() public payable {
        
        
        require(msg.value >= minimumAmount,"amount too low");
        
        total += msg.value;
        
        participants.push(payable(msg.sender));
    }
    
    
    function getWinner() public {
        
        
        require(participants.length >=1);
        
    
        
        participants[1].transfer(total);
    }
    
    
}