pragma solidity >= 0.7.0 < 0.9.0;


contract ExcerciseArrays{
    
    
    uint [] public changeArray;
    
    function removeElement(uint index) public {
        
        changeArray[index] = changeArray[changeArray.length - 1];
        
        changeArray.pop();
        
    }
    
    function test() public {
        
        
        changeArray.push(1);
        changeArray.push(2);
        changeArray.push(3);
        changeArray.push(4);
    }
    
    
    function getChangeArray() public view returns(uint[] memory){
        
        return changeArray;
    }
    
    
}