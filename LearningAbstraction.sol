pragma solidity >= 0.7.0 < 0.9.0;


//base contract
abstract contract X{
    
    function y() public view virtual returns(string memory);
}

//derived contract
contract Z is X{
    
    function y() public view override returns(string memory) {
        
        return 'hello';
    }
}

abstract contract Member {
    
    string name;
    uint age = 38;
    
    function setName() public view virtual returns(string memory) ;
    
    function returnAge() public view returns(uint){
        
        return age;
    }
}

contract Teacher is Member{
    
    function setName() public view override returns(string memory){
        
        return 'Gordon';
    }
}