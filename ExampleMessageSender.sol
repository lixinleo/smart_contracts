// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
contract ExampleMessageSender {
    address public someAddress;

    function setAddress() public {
        someAddress = msg.sender;
    }
}
