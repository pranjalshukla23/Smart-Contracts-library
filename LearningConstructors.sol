pragma solidity >= 0.7.0 < 0.9.0;

contract LearningConstructors{
    
    string name;
    uint age;
    
    constructor(string memory _name, uint _age) public{
        
        
        name = _name;
        age  = _age;
    }
}



contract Teacher is LearningConstructors {
    
    
    //to invoke parent contract constructor and pass values to it as paramaeters from derived contract
    constructor(string memory n, uint a) LearningConstructors(n,a) public {}
    
    function getName() public view returns(string memory){
        
        return name;
        
    }
}
