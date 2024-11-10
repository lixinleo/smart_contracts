// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract ExampleUint {
    uint public myUint;

    uint8 public myUnit8 = 250;

    int public myInt = -10;

    function setMyBool(uint _myUint) public {
        myUint = _myUint;
    }

    function increase() public {
        myUnit8++;
    }

    function increaseInt() public {
        myInt++;
    }
}
