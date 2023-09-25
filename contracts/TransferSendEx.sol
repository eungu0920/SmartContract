// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransferSendEx {
    function transferEx(address payable to, uint amount) payable public {
        to.transfer(amount);
    }

    function sendEx(address payable to, uint amount) payable public returns(bool) {
        return to.send(amount);
    }
}