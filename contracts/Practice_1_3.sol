// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Unchecked {
    function f(uint8 a, uint8 b) pure public returns (uint) {
        unchecked { return a - b; }
    }

    function g(uint8 a, uint8 b) pure public returns (uint) {
        return a - b;
    }

    function compare(uint8 a, uint8 b) pure public returns (string memory) {
        require(a >= b, "The value of function f() and g() are different.");
        
        return "Same value";
    }
}

// 왜 인지 모르겠는데 공식 문서에서도 pure와 public의 순서가 저렇게 나와있습니다...