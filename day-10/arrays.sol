// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract IntroToArray {
    uint[] public numbers;

    function pushNumber(uint _number) public {
        numbers.push(_number);
    }

    function popNumber() public {
        require(numbers.length > 0, "Array is emphty");
        numbers.pop();
    }

    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }
}


/*
Arrays:
In Solidity, an array is a data structure that can store
a collection of elements of the same data type, Arrays in Solidity
can be dynamic (Length can be change) or Fixed (length is predetermined). They are
commonly ued to organize and manage data within smart contracts.

The pushOperation function lets us add
a new number to the end of the Array.
The popOperation function allows us to remove
the last number from the array, but it checks first to
make sure the array isn't empty.

WORKING:
This contract manages a list of number, pushNmbers add 
a new number, popNumber removes the last on (if not empty), and getNumbers
shows the current list, simple as that!
/*