pragma solidity >= 0.7.0 < 0.9.0;

contract LearnUintAndBits{
    
    
    uint number = 2;
    
    
    //converion from higher to smaller type
    uint32 a = 0x12345678;
    
    uint16 b = uint16(a); // b = 0x5678
    
    //conversion from smaller to higher type
    uint16 c = 0x1234;
    uint32 d = uint32(c); // d = 0x00001234
    
    
    bytes2 e = 0x1234;
    bytes1 f  = bytes1(e); // f = 0x12 
    
    
    bytes2 g = 0x1234;
    bytes4 h = bytes4(g); //h = 0x12340000
    
    
}