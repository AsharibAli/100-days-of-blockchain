// SPDX-Lincese-Identifier: MIT
pragma solidity 0.8.22;

contract ErrorCheck{
    function checkNonZerOAddress (address addr)
    public pure returns (string memory){
        require(addr != address(0), "Address must not be zero")
        return "Address is not zero!";
    }
}

/*
REQUIRE
In Solidity, the word "require" acts like a 
safety check, When something must be true for a 
function to work properly, we use "require"
If the condition isn't met, it shops everything and says
there's an issue, ensuring things stay secure.

WORKING
This contract is working like when you provide
an ethereum address, it should not be the zero address,
if the address is not zero, it says  "Address is not zero!" if the
address is zerp, it tells you there's an issue
by saying "Address must not be zero!"
This helps make sure people are using real, valid address.
/*