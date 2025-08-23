// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Keccak {
    /**
     * In this exercise, the task is to return the correct keccak256 of any value passed into the keccak function
     */

    function keccak(uint256 x) external pure returns (bytes32) {
        // your code here
        assembly {
            mstore(0x00, x)
            let ret := keccak256(0x00, 0x20)
            mstore(0x20, ret)
            return(0x20, 0x20)
        }
    }
}
