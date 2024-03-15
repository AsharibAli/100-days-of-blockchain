// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract TimeLock {
    event Withdrawal(address indexed beneficiary, uint256 amount);

    address public beneficiary;
    uint256 public releaseTime;

    constructor(address _beneficiary, uint256 _releaseTime) {
        require(_releaseTime > block.timestamp, "Release time must be in the future");
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
        
    }

    function Withdraw() external {
        require(msg.sender == beneficiary, "only the beneficiary can withdraw");
        require(msg.sender >= releaseTime, "Release time has not arrived yet!");

        // Perform the withdrawal
        // (In a real contract, you may want to transfer funds instead of using a simple bool flag)
        // For example: payabale(beneficiary).transfer(address(this).balance);

        emit withdrawal(msg.sender, address(this).balance)
    }
}