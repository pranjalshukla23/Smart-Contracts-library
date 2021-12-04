pragma solidity >= 0.7.0 < 0.9.0;

contract LearningArrays{
    
    
    //dynamic
    uint[] public myArray;
    
    //dynamic
    uint[] public myArray2;
    
    //fixed array
    uint[200] public myArray3;
    
    
    function push(uint number) public{
        
        myArray.push(number);
    }
    
    
    function pop() public{
        
        myArray.pop();
    }
    
    function getLength() public view returns(uint){
        
        return myArray.length;
    }
    
    
    function remove(uint i) public{
        
        delete myArray[i];
    } 
}