// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
contract ExampleMapping22 {
    mapping(address => uint) private moneyStored;
    function sendMoney() public payable {
        moneyStored[msg.sender] = msg.value;
    }

    function withdrawAllMoney(address payable _to) public {
        _to.transfer(moneyStored[_to]);
    }
}
