// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StaticcallEx {
    bytes4 private constant SIG_BALANCE_OF = 0x70a08231;

    function balanceOf(address token, address to) internal view returns (uint amount) {
        if (token == address(0)) return token.balance;
        else {
            (bool success, bytes memory data) = address(token).staticcall(abi.encodeWithSelector(SIG_BALANCE_OF, to));
            require(success && data.length >= 32, 'Currency ERC20: BalanceOf failed');
            amount = abi.decode(data, (uint));
        }
    }
}