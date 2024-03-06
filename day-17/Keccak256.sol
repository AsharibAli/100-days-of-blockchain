// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract HashFunction {
    // Function to calculate the Keccak-256 hash of a given parameters
    function Hash(string memory text, uint num, address addr) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(text, num, addr));
    }
}

/*
KECCAK256
Keccak function in Solidity calculates a 256-bit
hash using the keccak-256 algorithm,
commonly used for data integrity in Ethereum
smart contracts, The keccak256
function is Employed for taks like creating 
unique IDs and verifying data integrity.

WHERE WE WILL USE THIS HASH FUNCTION
- Data Integrity: Ensure the security and integrity
of data by hashing and verifying against stored hash
values.
-Unique Identifiers: Generate unique tokens or IDs
for users, assets or transactions.
- Access Coontrol: Implement secure access controls
and credential validation using hashed paramerters.
- Cryptographic Signatures: Enhance security by
creating and verifying cryptographic signatures for
messages or transactions.
- Address Derivation: Safely derive new Ethereum addresses
from existing data.

CONTRACT WORKING:
- The HashFunction contract calulates the Keccak-256 hash
of concatenated parameters (string text, uint num, and address addr) using
keccak256(abi.encodePacked(...). The result is a 256-bit hash.)
/*
