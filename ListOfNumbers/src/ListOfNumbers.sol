// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract ListOfNumbers {
    uint256[] private arr;

    /// let caller append @param number to the array "arr"
    function appendToArray(uint256 number) public {
        // your code here
        arr.push(number);
    }

    /// return arr
    function getArray() public returns (uint256[] memory) {
        // your code here
        uint256[] memory ret = new uint256[](arr.length);
        for (uint256 i = 0; i < arr.length; i++) {
            ret[i] = arr[i];
        }
        return ret;
    }
}
