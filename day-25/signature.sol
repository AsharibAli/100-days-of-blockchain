// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract SingleSigWallet {
    address public owner;
    event Executed(
        address indexed owner,
        address indexed to,
        uint value,
        bytes data
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // The receive function allows the contract to accept incoming Ether transactions.
    receive() external payable {}

    function execute(
        address to,
        uint value,
        bytes memory data
    ) external onlyOwner {
        (bool success, ) = to.call{value: value}(data);
        require(success, "Transaction Execution failed");
        emit Executed(msg.sender, to, value, data);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}
