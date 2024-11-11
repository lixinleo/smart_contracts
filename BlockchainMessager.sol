// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
contract BlockchainMessager {
    address public owner;
    uint public changeCounter;
    string public theMessage;
    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage(string memory _newMessage) public {
        require(msg.sender == owner, "Message sender must be owner!");
        theMessage = _newMessage;
        changeCounter++;
    }
}
