pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseEnums{
    
    
    enum shirtColor {RED, WHITE, BLUE}
    
    
    shirtColor constant defaultChoice = shirtColor.BLUE;
    
    
    shirtColor choice;
    
    
    function setWhite() public{
        
        choice = shirtColor.WHITE;
    }
    
    function getChoice() public view returns(shirtColor){
        
        //returns index 
        return choice;
    }
    
    
    function getDefaultChoice() public view returns(shirtColor){
        
        //returns index
        
        return defaultChoice;
    }
    
    
}