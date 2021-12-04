pragma solidity >= 0.7.0 < 0.9.0;

contract LearnMapping{
    
    mapping(address => uint) public myMap;
    
    
    function setAddress(address _addr, uint _index) public {
        
        myMap[_addr] = _index;
    }
    
    
    function getAddress(address _addr) public view returns (uint){
        
        return myMap[_addr];
    }
    
    function removeAddress(address _addr) public{
        
        delete myMap[_addr];
    }
}