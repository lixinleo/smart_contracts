// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;
contract MyContract {
    string public ourString = "hello world";

    function updateOurString(string memory _updateString) public {
        ourString = _updateString;
    }
}
