// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Converter {
    receive() external payable {
        // This function is called when Ether is sent to the contract.
    }

    function getBalanceInWei() public view returns (uint256) {
        // Get the contract's balance in wei.
        return address(this).balance;
    }

    function getBalanceInEther() public view returns (uint256) {
        // Get the contract's balance in ether.
        return getBalanceInWei() / 1 ether;
    }

    function getBalanceInGwei() public view returns (uint256) {
        // Get the contract's balance in gwei (1 ether = 1,000,000,000 gwei).
        return getBalanceInWei() / 1 gwei;
    }
}
