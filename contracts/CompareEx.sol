// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractA {
    function callB() public returns (address, address, address, address) {
        ContractB b = new ContractB();
        
        (address bMsgSender, address bTxOrigin) = b.called();

        return (msg.sender, tx.origin, bMsgSender, bTxOrigin);
    }

}


contract ContractB {
    address msgSender = msg.sender;
    address txOrigin = tx.origin;

    function called() public view returns (address, address) {
        return (msg.sender, tx.origin);
    }
}