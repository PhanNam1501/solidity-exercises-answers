// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract PriceIsRight {
    /// @dev make this function revert unless exactly 1 ether is sent as value in the function call
    modifier only1Eth {
        require(msg.value == 1 ether);
        _;
    }
    function buy() public payable only1Eth {
        /// your code here
    }
}
