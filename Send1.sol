// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
contract Send1 {
    string public myString = "hello world";

    function updateMyString(string memory _myString) public payable {
        //msg.value has to be set when run the contract
        if (msg.value == 1 ether) {
            myString = _myString;
        } else {
            // send back what is set
            payable(msg.sender).transfer(msg.value);
        }
    }
}
