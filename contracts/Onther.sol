// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Onther {
    string public name = "Onther";
}

function add(uint x, uint y) pure returns (uint) {
    if (x > 5) {
        return x + y;
    } else if (x < 5) {
        return x / y;
    } else {
    // x가 5인 경우
        return x * y;
    }
}
