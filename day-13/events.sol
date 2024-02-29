// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.22;

contract SimpleEventContract {
    event ItemPurchased(address indexed buyer, uint245 amount);
    function purchaseItem()  external payable {
        // Trigger the event
        emit ItemPurchased (msg.sender, msg.value);
    }
}


/*
EVENTS:
Events are a key feature that notifies external
applications about important changes within a
smart contract. the "event" keyword is used
to declare an event. The "emit" keyword is then
used within functions to trigger these events
broadcasting relavant information to external
systems. 

FEATURES
- Communication: Events in Solidity facilitate
communication by notifying external applications
(UI, Other smart contract, etc) about significant
changes. 
- Logging Changes: Events serve to log 
essential details, creating a transparent
record of actions or state modifications.
- Transparency: means that smart contracts
can openly share important information about 
what they're doing!

Contract Working
This event contract, records item purchases.
When someone buys an item by using the 
purchaseItem function and sends Ether,
it notes the buyer's address and the amount.
This ensures a clear record of purchases on the
blockchain!
/*