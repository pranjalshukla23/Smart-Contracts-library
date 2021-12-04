pragma solidity >= 0.7.0 <0.9.0;

contract Oracle{
    
    address public admin;
    uint public rand;
    
    constructor() public{
        
        admin = msg.sender;
    }
    
    function setRand(uint _rand) external {
        
        require(msg.sender == admin);
        rand = _rand;
    }
    
    
}

contract LearnCryptographicFunctions{
    
    Oracle oracle;
    
    constructor(address _oracle) public{
        
        oracle = Oracle(_oracle);
    }
    
    function randMod(uint range) external view returns(uint){
        
        
        return uint(keccak256(abi.encodePacked(oracle.rand,block.timestamp,block.difficulty,msg.sender))) % range;
        
    }
    
}