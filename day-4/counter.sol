// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract CounterIntro{
    // state variable type uint named count
    uint public count;

    function increment()  external {
        count += 1;
    }
    function decrement() external {
        count -= 1;
    }
}

/*
Counter
A Counter is commonly used in smart contracts
to keep track of a numerical value that can be
incremented or decremented also useful for
counting occurrences, managing quantities, or 
tracking states in decentralized applocations 
on the blockchain.

WORKING
This "counter" contract it has two external functions, increment and decrement, allowing
external users to increase or decrease the count. The contract is designed to serve as a basic
counter, demonstrating the principles of state
variable and functions in Ethereum smart contracts.
/*



