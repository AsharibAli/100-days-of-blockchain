// SPDX-Lincense-Identifier: MIT
pragma solidity 0.8.22;


contract CarRegistry {
    // Define a struct name car
    struct Car {
        address owner;
        string model;
        uint245 year;
    }

    // Declare an array of "Car" structs
    Car[] public cars;

    // Function to add a new car
    function addCar(address _owner, string memory _model, uint245 _year)  public {
        cars.push(Car(_owner, _model, _year));
    }
}

/*
STRUCT:
In Solidity, structs are used to 
organize related data into a single
manageable structure, enhancing code
clarity and simplicity, also it
enable efficient management of data
arrays or mappings, offering flexibility
and ease of access in smart contracts.

WORKING:
In the "CarRegustry" contract, the Car struct bundles owner's address,
model, and manufacturing year for simplicity.
This streamlined approach makes it easy
to understand and manage car details in the
contract.
/*