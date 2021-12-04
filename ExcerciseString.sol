pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseString{
    
    string favouriteColor = "blue";
    
    
    function getFavouriteColor() public view returns(string memory){
        
        return favouriteColor;
    }
    
    function changeFavouriteColor(string memory color) public {
        
        
        favouriteColor = color;
    }
    
    
    function getChar() public view returns(uint){
        
        
        bytes memory stringToBytes = bytes(favouriteColor);
        
        return stringToBytes.length;
    }
    
    
}