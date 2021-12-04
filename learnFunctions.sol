pragma solidity >= 0.7.0 < 0.9.0;

contract LearnFunctions{
    
    //state variable
    uint a = 10;
    
  //create a function that add up two things
  function addValues() public view returns(uint){
      
      //local variable
      uint a = 3;
      uint b = 2;
      
      uint result  = a + b;
      
      return result;
  }
  
  function addNewValues() public view returns(uint){
      
     // uint a = 1;
      uint b = 5;
      uint result = a + b;
      return result;
  }
  
  function divideCalculator(uint b) public view returns(uint){
      
      uint result = a / b;
      
      return result;
  }
  
  function multiplyCalculator(uint b) public view returns(uint){
      
      uint result = a*b;
      
      return result;
  }
}