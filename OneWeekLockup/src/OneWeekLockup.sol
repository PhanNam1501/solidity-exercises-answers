// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract OneWeekLockup {
    /**
     * In this exercise you are expected to create functions that let users deposit ether
     * Users can also withdraw their ether (not more than their deposit) but should only be able to do a week after their last deposit
     * Consider edge cases by which users might utilize to deposit ether
     *
     * Required function
     * - depositEther()
     * - withdrawEther(uint256 )
     * - balanceOf(address )
     */
    mapping(address => uint256) public balances;
    uint256 public lastTimeDeposit;

    function balanceOf(address user) public view returns (uint256) {
        return balances[user];
    }

    function depositEther() external payable {
        balances[msg.sender] += uint256(msg.value);
        lastTimeDeposit = block.timestamp;
        
    }

    function withdrawEther(uint256 amount) external {
        require(block.timestamp > lastTimeDeposit + 1 weeks);
        payable(msg.sender).transfer(amount);
        balances[msg.sender] -= amount;
    }
}
