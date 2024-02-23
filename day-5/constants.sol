// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Constants {
    uint public constant MY_UINT = 123;
    address public constant MY_ADDRESS = 0x1234567890123456789012345678901234567890;
}

/*
Constants
In Solidity, we use constants to keep values
fixed for effieciency and lower gas fees,
By making certain values unchangeable, transactions
become more cost-effective, as the EVM can handle these
fixed values more efficiently, reducing overall
expenses, This not only streamlines the code but
also makes transactions more economical in
term of gas fees.

WORKING
This Solidity contract, called "Constants",
sets two values that can't be changed:
MY_UINT is set to 123, and MY_ADDRESS is set to
a specific ethereum address. The contract  shows
how to use the constants to keep certain values
fixed in a smart contract.
/*