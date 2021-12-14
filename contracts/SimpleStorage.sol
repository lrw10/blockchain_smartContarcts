// SPDX-License-Identifer: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    // this will get initialized to 0
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People person = People({favoriteNumber: 10, name: "Loba"});

    People[] public people;

    mapping(string => uint256) public nameToFavNumber;

    function store(uint256 _favNumber) public {
        favoriteNumber = _favNumber;
    }

    function retreive() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavNumber[_name] = _favoriteNumber;
    }
}