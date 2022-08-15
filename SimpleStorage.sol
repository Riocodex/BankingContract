//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{

    uint256 public favouriteNumber;//this gets initiallized to zero
    mapping( string => uint256) public nameToFavoriteNumber;

    struct People{
        uint256 favouriteNumber;
        string name;
    }
    People[]public people;

    function store(uint256 _faveNum) public virtual {
        favouriteNumber = _faveNum;
        
    }


    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }
    function addPeople(string memory _name , uint256 _favouriteNumber)public{
        people.push(People(_favouriteNumber,_name));
        nameToFavoriteNumber[_name] = _favouriteNumber;
    }
    
    
}
