// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract ModifierIntro {
    address public owner;
    uint public totalAmount;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You are not an owner");
        _;
    }
    function addAmount(uint256 _amount) public onlyOwner {
        totalAmount = totalAmount + _amount; // += same

    }
    function withdrawAmount(uint256 _amount) public onlyOwner {
        require(_amount <= totalAmount, "no funds");
        totalAmount = totalAmount - _amount; // -= same
    }
}


/*
In Solidity, a function modifier is like a 
handy tool that let's you quickly add
specific checks or actions to functions.
It's a way to keep your code short and avoid
doing the same thing over and over by letting you 
use the same checks in different parts of your code.

WORKING
This contract is working you may see.
The onlyOwner rule makes sure only the owner
can do important actions. The owner can add money
"addAmount" or take some away "withdrawAmount" This
contract make it simple for the owner to control
the total amount of money safely. The purpose
of modifier is to make sure code short and quicky
add checks for specified actions.
/*