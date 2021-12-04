pragma solidity >= 0.7.0 < 0.9.0;


contract Owner{
    
    address owner;
    
    constructor() public {
        
        owner  = msg.sender;
    }
    
    modifier onlyOwner{
        
        require(msg.sender == owner);
        _;
    }
    
      modifier cost(uint _price){
        
        require(msg.value >= _price);
        _;
    }
    
    
}


contract Register is Owner{
    
    mapping(address => bool) registeredAddresses;
    
    uint price;
    
    constructor(uint initialPrice) public{
        
        price  = initialPrice;
    }
    
  
    function register() public payable cost(price){
        
        registeredAddresses[msg.sender] = true;
    }
    
    //onlyOwner is the function modifier which allows only owner to change the price
    function changePrice(uint _price) public onlyOwner{
        
        price = _price;
    }
}