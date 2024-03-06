// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract FunctionSelector {
    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }
}

contract Receiver {
    event Log(bytes data);

    function transfer() external {
        emit Log(msg.data);
    }
}

/*
FUNCTION SELECTOR:
In simple terms, we use a function selector in 
Solidity to create  a unique code for each function.

This solidity code has two contracts. The firs one FunctionSelector,
calculate a special code for a given function game, The second
one, Receiver, logs transaction data, including a unique
code generated for the trasnfer function.
/*