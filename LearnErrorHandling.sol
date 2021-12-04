pragma solidity >= 0.7.0 < 0.9.0;

contract LearnErrorHandling{
    
    bool public sunny = true;
    
    bool public umbrella = false;
    
    uint finalCalc = 0;
    
    
    //solar panel machine
    function solarCalc() public{
        
        
        require(sunny,'It is not sunny today!');
        
        finalCalc += 3;
        
        assert(finalCalc != 6);
        
    }
    
    //machine that controls weather
    function weatherChanger() public{
        
        sunny = !sunny;
        
    }
    
    //grad finalCalc
    function getCalc() public view returns(uint){
        
        return finalCalc;
    }
    
    //finalCalc never equals 6 
    function internalTestUnits() public{
        
        assert(finalCalc != 6);
    }
    
    
    function bringUmberlla() public{
        
        if(sunny==false){
            
            umbrella = true;
        }
        else{
            
            revert('No need to bring an umbrela today');
        }

    }
    
}