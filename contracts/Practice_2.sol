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
    struct Student {
        string name;
        uint studentNumber;
    }

    function callInternalFunction() public pure returns (string memory) {
        return internalFunction();
    }

    function callPublicFunction() public view returns (address) {
        return senderCheck();
    }

    function callPrivateFunction() public pure returns (string memory) {
        return callPrivate();
    }
    
    // struct type return
    function getStruct(string memory _name, uint _number) public pure returns (Student memory) {
        Student memory student = Student({
            name: _name,
            studentNumber: _number
        });
        return student;
    }
}