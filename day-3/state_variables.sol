// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.22;

contract StateVariableIntro {
    // state variable initialized with my name
    string public myName = "Asharib Ali"

    // Function to update the state variable
    function setName(string memory _newName) public {
        myName = _newName;
    }
}

/*
State Variables:
In Solidity, a state varibale is a variable
that belongs to a contract and persists on 
the blockchain, it can be read and 
modified by functions within the contract.

Working:
Solidity contract has a state variable myName initialized to
"Asharib Ali". it includes a function setName that allows
you to update the value of myName with a 
new string, this contract provide a simple
way to get and set a name on the
ethereum blockchain.
/*