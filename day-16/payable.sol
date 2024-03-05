// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Payable {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() external payable {}

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}

/*
PAYABLE IN SOLIDITY
In Solidity, payable is a modifier signaling that a function
or contract can receive Ether, It's commonly used to
magae payments, and enable Ether trasnfers in smart contracts.

Contract Working:
This solidity contract, Payable, lets the deployer
become the owner, accept Ether despots
through the deposit function and tracks the 
contract's Ether balance with the getBalance function.
/*