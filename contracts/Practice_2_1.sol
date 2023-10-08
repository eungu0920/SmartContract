// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BaseContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function senderCheck() public view returns (address) {
        return msg.sender;
    }

    function externalFunction() external pure returns (string memory) {
        return "This is an external function";
    }

    function internalFunction() internal pure returns (string memory) {
        return "This is an internal function";
    }

    function privateFunction() private pure returns (string memory) {
        return "This is a private function";
    }

    function callPrivate() internal pure returns (string memory) {
        return privateFunction();
    }

    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}

contract DerivedContract is BaseContract {
    function callInternalFunction() public pure returns (string memory) {
        return internalFunction();
    }

    function callPublicFunction() public view returns (address) {
        return senderCheck();
    }

    function callPrivateFunction() public pure returns (string memory) {
        return callPrivate();
    }
}