// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract VariableContract {
    // State variables: Stored on the blockchain and have global visibility.
    uint256 public stateVariable;
    bytes32 public stateBytesVariable;

    // Global variable: File-level global visibility.
    uint256 public globalVariable;

    constructor() {
        // Initialize state variables in the constructor.
        stateVariable = 0;
        stateBytesVariable = "Hello, World!";
    }

    function setLocalVariable() public pure returns (uint256) {
        // Local variable: Only accessible within this function.
        uint256 localVariable = 42;
        return localVariable;
    }

    function setGlobalVariable(uint256 newValue) public {
        // Set the global variable.
        globalVariable = newValue;
    }

    function setStateVariable(uint256 newValue) public {
        // Set the state variable.
        stateVariable = newValue;
    }

    function getStateVariable() public view returns (uint256) {
        // Get the value of the state variable.
        return stateVariable;
    }

    function setBytesStateVariable(bytes32 newValue) public {
        // Set the bytes32 state variable.
        stateBytesVariable = newValue;
    }

    function getBytesStateVariable() public view returns (bytes32) {
        // Get the value of the bytes32 state variable.
        return stateBytesVariable;
    }

    function getGlobalVariable() public view returns (uint256) {
        // Get the value of the global variable.
        return globalVariable;
    }
}
