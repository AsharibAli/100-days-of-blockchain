// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract introToMapping {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 myFavoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public ListofPeople;

    // mapping
    mapping (string => uint256) public nameToFavoriteNumber;

    function addPerson(uint256 _favoriteNumber, string memory _name)  public {
        ListofPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

/*
Mapping
In Solidity, mapping is employed to address
the inefficiency of searching for a specific
item in an array, unlike arrays, mappings
enable quick and direct access to values
associated with unique keys, optimizing the
retrieval process in smart contracts.

WORKING:
This solidity contract stores peoples favorite Numbers and names, It uses
a list (ListOfPeople) and a map (nameToFavoriteNumber), The addPerson
function lets you add a person's favorite number and
name to the list and map, making it easy to find someone's
favorite number by using their name.
/*