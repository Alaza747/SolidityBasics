//SPDX/License-Identifier: MIT


//define solidity version for this contract 
pragma solidity 0.8.17;


contract SimpleStorage{

//initalizing an 256 Bits integer variable called "favoriteNumber"    
    uint256 favoriteNumber;


//initializing a struct with keys "favoriteNumber" and "name"
    struct People {
        uint256 favoriteNumber;
        string name;
    }

//creating an array called "people" ?
    People[] public people;

//creating a mapping from "name" (string) to "favoriteNumber" (integer) 
    mapping(string => uint256) public nameToFavoriteNumber;

//creating a function "store" that assigns the input value to variable "favoriteNumber"
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

//creating a return function that return the variable "favoriteNumber" of type uint256 
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

//creating function "addPerson" that saves "_name" & "_favoriteNumber" into the array and creates a mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
