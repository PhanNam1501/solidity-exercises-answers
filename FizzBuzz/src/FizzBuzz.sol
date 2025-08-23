// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract FizzBuzz {
    function fizzBuzz(uint256 n) public pure returns (string memory) {
        // if n is divisible by 3, return "fizz"
        // if n is divisible by 5, return "buzz"
        // if n is divisible be 3 and 5, return "fizz buzz"
        // otherwise, return an empty string
        assembly {
            if lt(add(mod(n, 3), mod(n, 5)), 1) {
                mstore(0x00, 0x20)
                mstore(0x20, 0x09)
                mstore(0x40, "fizz buzz")
                return(0x00, 0x60)
            }
            if iszero(mod(n, 3)) {
                mstore(0x00, 0x20)
                mstore(0x20, 0x04)
                mstore(0x40, "fizz")
                return(0x00, 0x60)
            }
            if iszero(mod(n, 5)) {
                mstore(0x00, 0x20)
                mstore(0x20, 0x04)
                mstore(0x40, "buzz")
                return(0x00, 0x60)
            }
            mstore(0x00, 0x20)
            mstore(0x20, 0)
            mstore(0x40, "")
            return(0x00, 0x60)
        }
    }
}
