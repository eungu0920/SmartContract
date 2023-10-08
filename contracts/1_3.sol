// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

type UFixed16x2 is uint16;

using {
    add as +,
    div as /,
    sub as -
} for UFixed16x2 global;

uint32 constant SCALE = 100;

function add(UFixed16x2 a, UFixed16x2 b) pure returns (UFixed16x2) {
    return UFixed16x2.wrap(UFixed16x2.unwrap(a) + UFixed16x2.unwrap(b));
}

function div(UFixed16x2 a, UFixed16x2 b) pure returns (UFixed16x2) {
    uint32 a32 = UFixed16x2.unwrap(a);
    uint32 b32 = UFixed16x2.unwrap(b);
    uint32 result32 = a32 * SCALE / b32;
    require(result32 <= type(uint16).max, "Divide overflow");
    return UFixed16x2.wrap(uint16(a32 * SCALE / b32));
}

function sub(UFixed16x2 a, UFixed16x2 b) pure returns (UFixed16x2) {
    uint16 a16 = UFixed16x2.unwrap(a);
    uint16 b16 = UFixed16x2.unwrap(b);
    require(b16 <= a16, "Subtract overflow");
    return UFixed16x2.wrap(UFixed16x2.unwrap(a) - UFixed16x2.unwrap(b));
}

contract Math {
    function avg(UFixed16x2 a, UFixed16x2 b) public pure returns (UFixed16x2) {
        return (a + b) / UFixed16x2.wrap(200);
    }

    function subtract(UFixed16x2 a, UFixed16x2 b) public pure returns (UFixed16x2) {
        return a - b;
    }
}