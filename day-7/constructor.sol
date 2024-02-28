// SPDX-Lincese-Identifier: MIT
pragma solidity 0.8.22;

contract Constructor {
    uint public x;
    address public owner;
    constructor(uint _x){
        owner = msg.sender;
        x = _x;
    }
}

/*
CONSTRUCTOR
In Solidity, a constructor is a special function
in a smart contract that runs only once when the
contract is deployed. It's purpose is to set
up initail values or perform any necessary 
one-time actions.

WORKING
This contract is working u may see it has a 
visible number called "x" and an owner with a 
address, When you start the contract, you choose a number
for "x", and the owner is set to you, Everyone can see 
this number on the blockchain.
/*