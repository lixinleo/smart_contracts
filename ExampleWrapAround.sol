// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract ExampleWrapAround {
    //unit8 0 ~ 255
    uint8 public myUnit8 = 250;
    uint public myUint;

    function increase() public {
        myUnit8++;
    }

    function descrease() public {
        unchecked {
            myUint--;
        }
    }
}
