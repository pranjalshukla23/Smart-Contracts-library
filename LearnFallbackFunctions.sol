pragma solidity >= 0.7.0 < 0.9.0;


contract LearnFallbackFunctions{
    
    event Log(uint gas);
    
    
    //fallback payable function to receive ethers, will get executed when ethers are sent to this contract
    fallback () external payable{
        
        
        emit Log(gasleft());
    }
    
    
    function getBalance() public view returns(uint){
        
        return address(this).balance;
    }
}

//new contract will send ether to LearnFallbackFunctions contract and will trigger fallback function


contract SendToFallBack{
    
    function transferToFallBack(address payable _to) public payable{
        
        //send ether with the transfer method
        
        _to.transfer(msg.value);
    }
    
    function callFallBack(address payable _to) public payable{
        
        //send ethers using call method to contract
        (bool sent,) = _to.call{value: msg.value}('');
        require(sent,'Failed to send!');
    }
}