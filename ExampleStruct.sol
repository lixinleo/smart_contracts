// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Wallet {
    struct PaymentReceived {
        address from;
        uint amount;
    }

    PaymentReceived public payment;

    function payContract() public payable {
        payment = PaymentReceived({from: msg.sender, amount: msg.value});
    }
}
