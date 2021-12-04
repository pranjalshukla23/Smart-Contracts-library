pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseRestrictedPatternAccess{
    
    
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;
    
    
    modifier onlyOwner(){
        
        require(msg.sender == owner,"Sender not authorized");
        _;
    }
    
    modifier onlyAfter(uint _time){
        
        require(block.timestamp >= _time,"Function is called too early");
        _;
    }
    
    modifier costs(uint _amount){
        
        require(msg.value >= _amount,"Not enough ether provided");
        _;
    }
    
    function changeOwnerAddress(address _newAddress) public onlyOwner{
        
        owner = _newAddress;
    }
    
    
    function disown() public onlyOwner onlyAfter(creationTime + 5 seconds){
        
        delete owner;
    }
    
    function forceOwnerChange(address _address) public payable costs(200 ether) {
        
        owner = _address;
    }
    
    
}