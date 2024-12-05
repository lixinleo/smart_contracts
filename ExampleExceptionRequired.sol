// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract ExampleExceptionRequired {
    mapping(address => uint8) public received;

    function deposit() public payable {
        assert(msg.value == uint8(msg.value));
        received[msg.sender] += uint8(msg.value);
        assert(received[msg.sender] >= uint8(msg.value));
    }

    function withdraw(address payable _to, uint8 _amount) public {
        require(_amount < received[msg.sender], "Not enough tokens");
        received[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}
