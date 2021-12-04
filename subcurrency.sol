pragma solidity >= 0.7.0 < 0.9.0;

contract Coin{
    
    address public minter;
    mapping(address => uint) public balances;
    
    event Sent(address from, address to, uint amount);
    
    //create error
    error insufficentBalance(uint requested, uint available);
    

    constructor(){
        
        minter = msg.sender;
    }
    
    
    //make new coins and send them to address
    //only the owner can send these coins
    function mint(address receiver, uint amount) public {
        
        require(msg.sender == minter);
        
        balances[receiver] = balances[receiver] + amount;
        
        
    }
    
    //sent any amount of coins to an existing address
    function sent(address receiver, uint amount) public{
        
        //require amount to be greater than x and run this
        if(amount > balances[msg.sender]){
            
            revert insufficentBalance({
                
                requested: amount,
                available: balances[msg.sender]
            });
            
        }
        
        balances[msg.sender]  = balances[msg.sender] - amount;
        
        balances[receiver] = balances[receiver] + amount;
        
        emit Sent(msg.sender,receiver,amount);
    }
}