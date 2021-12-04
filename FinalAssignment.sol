pragma solidity >= 0.7.0 < 0.9.0;

contract FinalAssignment{
    
    
    address payable public  beneficiary;
    uint public highestBid;
    address public highestBidder;
    uint public auctionEndTime;
    
    mapping(address => uint) pendingReturns;
    
    bool ended;
    
    
    event Bid(address indexed bidder, uint indexed amount);
    
    
    event auctionEnd(address indexed winner, uint indexed amount);
    
    
    constructor(address payable _address, uint _time) public{
        
        beneficiary = _address;
        auctionEndTime = block.timestamp + _time;
    }
    
    
    function bid() public payable{
        
        if(block.timestamp > auctionEndTime) revert("auction ended");
        
        if(msg.value <= highestBid) revert('Sorry, the bid is not high enough');
        
        if(highestBid !=0){
            
            pendingReturns[highestBidder] += highestBid;
        }
        
        highestBidder = msg.sender;
        
        highestBid = msg.value;
        
        emit Bid(highestBidder,highestBid);
    }
    
    function withdraw() public payable returns(bool){
        
        uint amount = pendingReturns[msg.sender];
        
        if(amount > 0){
            
            pendingReturns[msg.sender] = 0;
        }
        
        if(!payable(msg.sender).send(amount)){
            
            pendingReturns[msg.sender] = amount;
        }
        
        return true;
    

    }
    
    
    function end() public {
        
    
      if(block.timestamp < auctionEndTime) revert('The auction has not ended yet');
      
      if(ended) revert('auction is over');
        
       ended = true;
       
       emit auctionEnd(highestBidder,highestBid);
       
       beneficiary.transfer(highestBid);
       
       
    }
}