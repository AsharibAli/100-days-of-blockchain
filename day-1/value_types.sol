// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.22;
contract valueType {
    bool public b = true; // false by default
    uint public u = 321; // only postive values
    int public n = -123; // this is for negative values
    string public s = "Hello World" // string values
    address public owner = 0x123456789.. // owner address type (ethereum address)
}

 
/*
Boolean:
In solidity, bool is a boolean type representing
true or false values, By default, it is 
initialized to false, It is commonly used for 
conditions and decision making within smart
contracts.
*/

/*
UINT:
In Solidity, uint is for non-negative
whole numbers by default start with 0.
it is available for specific precision requirements.
*/


/*
ADDRESS:
In Solidity, address is like a special code for 
ethereum accounts and contracts, it's important
for sending money and making things happen in 
smart contracts.
*/

