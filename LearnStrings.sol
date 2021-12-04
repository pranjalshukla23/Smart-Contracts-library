pragma solidity >=0.7.0 < 0.9.0;

contract LearnStrings{
    
    
    string greetings = 'Hello! You\'re here now';
    
    
    function sayHello() public view returns(string memory){
        
        return greetings;
    }
    
    function changeGreeting(string memory _change) public{
        
        greetings = _change;
    }
    
    
    function getChar() public view returns(uint){
        
        
        //strings in butes do not have length property
        // to find length of string: 1. convert string to bytes and then use length property
        
        bytes memory stringToBytes  = bytes(greetings);
        
        return stringToBytes.length;
        
    }
}