pragma solidity >= 0.7.0 < 0.9.0;

contract LearnAssembly{
    
    function addToEVM() external{
        
        uint x;
        uint y;
        
           
    assembly{
        
        //add two numbers
        let z := add(x,y)
        
        //load data from a specific slot
        let a := mload(0x40)
        
        //store something temporarily to memory
        mstore(a,4)
        
        
        //store with persistance storage
        sstore(a,100)
        
    }
    
    }
    
    function addToEVM2() public view returns(bool success){
        
        
        uint size;
        address addr;
        
        //check whether an address contains any bytes of code
        assembly{
            
            size:= extcodesize(addr)
            
        }
        
        if(size > 0) {
            return true;
        }
        
        else{
            
            return false;
        }
    }
    
    function addToEVM3() external view{
        
     
        bytes memory data = new bytes(10);
        
        assembly{
            
            //bytes in memory is size , so data actually starts at second slot
           let dataB32 := mload(add(data,32))
            
            //operation add and we add 32 bytes so we will the firt slot
        }
    }

}



