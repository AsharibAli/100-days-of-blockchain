// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Ownable {
    address public owner;

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "not owner");
        _;
    }
    function setOwner(address _newOwner) external {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }
    function onlyOwnercanCall() external onlyOwner {
        // code
    }
    function everyonecanCall() external {
        // code
    }
}

/*
In Solidity, "ownable" means a contract
has an owner who holds special rights, 
this pattern ensures that only the owner usually the
contract deployer can perform certain actions, adding
a basic layer of access control for enhanced securtiy.

WORKING:
The setOwner functions allows the current
owner to transfer ownership to a new address also
it checks address shouldn't be zero. The onlyOwnercancall function
is restricted to the owner, providing 
exclusive access to specific operations and the
everyonecanCall function is open to any address!
*/