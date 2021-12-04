pragma solidity >= 0.7.0 < 0.9.0;

contract LearningForLoop{
    
    
    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];
    
    
    function checkMultiples(uint _number) public view returns(uint){
        
       uint count = 0;
       
        for(uint i = 0; i < numbersList.length; i++){
            
            
            if(checkMultipleValidity(numbersList[i], _number)){
                
                count++;
            }
        
        }
        
        return count;
    }
    
    
    function checkMultipleValidity(uint _num, uint _nums) public view returns(bool){
        
        
        if( _num % _nums == 0){
            
            return true;
        }
        
        else{
            
            return false;
        }
           
        
    }
}