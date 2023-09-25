// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasLeftEx {
    uint save;

    function check() public returns(uint, uint) {
        uint bef = gasleft();
        save = bef;
        uint aft = gasleft();

        return (bef, aft);
    }
}