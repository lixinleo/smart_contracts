// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
contract SampleFallBack {
    uint public lastValueSent;
    string public lastFunctionCalled;

    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }
}
