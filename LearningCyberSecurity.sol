pragma solidity >= 0.7.0 < 0.9.0;


contract Victim{
    
    function isItAContract() public view returns(bool){
        
        //if there are bytes of code greater than zero then it is a contract
        uint32 size;
        
        address a = msg.sender;
        
        //inline assembly accesses EVM ethreum virtual machine low level
        assembly{
            
            //extcodesize retreives size of code 
            size := extcodesize(a)
        }
        
        return (size>0);
        
    }
}

contract Attacker{
    
    bool public trickedYou;
    
    Victim victim;
    
    constructor(address _v) public{
        
        victim = Victim(_v);
        
        trickedYou = !victim.isItAContract();
    }
}