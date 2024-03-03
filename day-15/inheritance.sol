// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;


contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
    function bar() public pure virtual returns (string memory){
        return "A";
    }
    function baz() public pure virtual returns (string memory){
        return "A";
    }
}


contract B is A {
    function foo() public pure override returns(string memory){
        return "B";
    }
    function bar() public pure override returns(string memory){
        return "B";
    }
}

contract C is A {
    function bar() public pure override returns (string memory){
        return "B";
    }
}

/*
INHERITANCE:
Inheritance enables contracts to inherit 
properties and behaviours, promoting 
code reuse and customization, Child contracts
can extend or override functions from parent
contracts, fostering modularity and efficiency.

CONTRACT WORKING:
Contracts A,B, and C are defined in Solidity. A provides
three functions (foo, bar, and baz) returning "A", B and C 
inherit from A, B overrides A's foo and bar functions to return "B"
C overrides A's bar function to return "B"
in essence B and C modify A's functionality,
showcasing how solidity supports inheritance
and function overriding.
/*