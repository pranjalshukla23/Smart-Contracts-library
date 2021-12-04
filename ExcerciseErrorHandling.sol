pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseErrorHandling{
    
    address public seller;
    
    modifier onlySeller(){
        
        require(msg.sender==seller,"you are not the seller");
        _;
    }
    
    function setSeller(address _address) public{
        
        seller = _address;
    }
    
    function sell(uint amount) public payable onlySeller{
        
        if(amount > msg.value){
            
            revert("Not enough ethers provided");
        }
        
        
    }
}