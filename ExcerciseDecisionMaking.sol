pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseDecisionMaking{
    
    uint wallet = 10;
    
    function airDrop() public view returns(uint){
        
        if(wallet == 10){
            
            return wallet + 10;
        }
        else{
            
            return wallet + 1;
        }
        
    }
}