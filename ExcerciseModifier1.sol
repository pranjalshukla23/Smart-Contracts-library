pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseModifier{
    
    
    address public owner  = msg.sender;
    
  function withdrawFunds(uint amount) public onlyBy(owner) returns(bool success){
      
      require(balance[msg.sender] > amount);
      
      balance[msg.sender] = balance[msg.sender] - amount;
      
      return msg.sender.send(amount);
      
      
  }
  
  modifier onlyBy(address _account){
      
      require(msg.sender == _account,"Sender not authorized");
      _;
  }
}