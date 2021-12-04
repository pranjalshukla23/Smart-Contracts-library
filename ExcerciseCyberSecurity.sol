pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseCyberSecurity{
    
    
  function withdrawFunds(uint amount) public returns(bool success){
      
      require(balance[msg.sender] > amount);
      
      balance[msg.sender] = balance[msg.sender] - amount;
      
      return msg.sender.send(amount);
      
      
  }
}