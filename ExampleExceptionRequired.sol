// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract ExampleExceptionRequired {
    mapping(address => uint) public received;

    function deposit() public payable {
        received[msg.sender] += msg.value;
    }

    function withdraw(address payable _to, uint _amount) public {
        require(_amount <= received[msg.sender], "Not enough tokens");
        received[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}
