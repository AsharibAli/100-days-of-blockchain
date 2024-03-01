// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.2;

contract EnumIntro {
    // Enum defination for the staus of an order
    enum Status {
        shipped,
        accepted,
        rejected
    }
    Status public status;

    function ship() public {
        // Ship function to check order
        status = Status.shipped;
    }
    function acceptDelivery() public {
        // It checks whether accept
        require(status == Status.shipped);
        status = Status.accepted;
    }
    function rejectDelivery() public  {
        // Reject function
        require(status == Status.shipped);
        status = Status.rejected;
    }
}


/*
In Solidity, an enum is a user-defined
data type for creating a set of named constant
values, it's commonly used to represent
distinct and mutually exclusive states or 
options within a contract, improving code
readability and reducing the
risk of errors.

Features:
- User-Defined Type: Enum in Solidity allows
you to create your own data type.
- Named Constants: It helps define a set
of named constant values.
- Readability: Enhances code readability.
- Error Reduction: Reduces the risk of errors.
- Human-Friendly: Makes the code more
human-friendly and self-explanatory.

Contract Working:
In this contract, we use the "Status" enum
to show if an order is "shipped" "accepted" or
"rejected". The status variable keeps track of
the current order status. The role of "enum"
makes it easy to understand and manage these
different stages in a straigtforward way.
/*