// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SmartContract {
    uint256 public a;

    function createContract() public view returns (uint256) {
        return a;
    }
}