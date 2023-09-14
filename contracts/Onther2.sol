// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./Onther.sol";

contract Onther2 {
    Onther public onther = new Onther();
    
    address public ontherer;

    uint public constant MY_STUDENT_NUMBER = 2023572506;

    struct OntherPeople {
        uint age;
        string nationality;
        address delegate;
    }

    modifier onlyOntherer() {
        require(
            msg.sender == ontherer,
            "Only ontherer can call this."
        );
        _;
    }

    function mainpotin() view public returns (string memory) {
        return onther.name();
    }

    function subpoint(uint x, uint y) pure public returns (uint) {
        return add(x, y);
    }

    function shortFunction() pure public returns (uint) { return MY_STUDENT_NUMBER; }

    function doSomething() pure public returns (string memory) {
        return "Hello World!";
    }
}

