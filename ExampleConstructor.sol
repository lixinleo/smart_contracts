// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
contract ExampleConstructor {
    address public myAddress;

    constructor(address someAddress) {
        myAddress = someAddress;
    }
}
