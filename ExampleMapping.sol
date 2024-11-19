// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
contract ExampleMapping {
    mapping(address => uint) public balances;

    function setBalance(uint _balance) public {
        balances[msg.sender] = _balance;
    }

    function getBalance(address _address) public view returns (uint) {
        return balances[_address];
    }
}
