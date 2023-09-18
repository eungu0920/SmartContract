// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract PayableEx {
  function sendEth() public payable {
    if(msg.sender.balance >= 0.01 ether) {
        
    } else {
      revert();
    }
  }

  function getBalance() public view returns (uint256) {
    return msg.sender.balance;
  }
}