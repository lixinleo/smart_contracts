// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract ExampleViewPure {
    uint public myStorageVaraible;

    function getMyStorageVariable() public view returns (uint) {
        return myStorageVaraible;
    }

    function getAddition(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function setVal(uint a) public {
        myStorageVaraible = a;
    }
}
