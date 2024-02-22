// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.22;

contract FunctionIntro {
    function addition(uint x, uint y) public pure returns (uint){
        return x + y;
    }
    function substract(uint x, uint y) public pure returns (uint){
        return x - y;
    }
}

/*
// Functions
Solidity functions perform specific tasks 
in a smart contract, taking paramater, performing
computations and returning results. This function:
addition add two number, and subtract subtracts the second from
the first.

Visibility: "Public" means Accessible by anyone.

Pure Function: No data read from or written to
the blockchain means (no blockchain interaction and used for computations).
based on input parameters, Marked with the keyword "pure".

Return Type (uint): Indicates that the function
will return an unsigned integer (uint).

/*

