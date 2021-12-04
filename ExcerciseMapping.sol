pragma solidity >= 0.7.0 < 0.9.0;

contract ExcerciseMapping{
    
    struct Movie{
        
        string title;
        string director;
    }
    
    mapping (uint => Movie) public movie;
    
    mapping(address => mapping(uint => Movie)) public  myMovie;
    
    
    function addMovie(uint _id, string memory _title, string memory _director) public {
    
      movie[_id]  = Movie(_title,_director);
      
      
      myMovie[msg.sender][_id] = Movie(_title,_director);
      
      
        
    }
    
}