// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "./simpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    //    This function is creating new SimpleStorageContract
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorage);
    }

    // This function is responsible for storing new value to SimpleStorageContracts
    function sfStore(
        uint _simpleStorageIndex,
        uint _newSimpleStorageNumber
    ) public {
        // address
        // ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[
            _simpleStorageIndex
        ];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    // This function is retrieving new values that we store on index
    function sfGet(uint _simpeStorageIndex) public view returns (uint) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}
