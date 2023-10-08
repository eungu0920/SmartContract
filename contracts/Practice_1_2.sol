// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Prcatice {
    function a() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    function b() public pure returns (uint, bool, uint) {
        (uint x, bool y, uint z) = a();
        return (z, y, x);
    }
}