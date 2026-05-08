// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

/**
 * @title  SimpleBank Smart Contract
 * @author LegendaryCode
 * @notice Simple Bank Users can deposit, withdraw, and check their balance
 */



contract SimpleBank {
    
    /** STATE VARIABLES  */ 

    /// @notice Variable for the minimum value value , needed to be deposited
    uint256 public constant MINIMUM_ETH = 1e18;

    /// @notice State variale to store the users that deposited
    address[] public s_depositors;

    /// @notice Ledger mapping address to their balances
    mapping(address => uint256) public s_balances;
    


    /** FUNCTIONS */

    /// @notice Depositing function marked "payable"  to accept Ether
    function deposit() public payable {
        /// @notice Checking if the amount to be deposited is greaterthan the MINIMUM_ETH
        require(msg.value >= MINIMUM_ETH, "Did not send enough ETH");

        /// @notice if the deposited value sent is enough the execute this code below: Updates a mapping (likely a database-like structure) called s_balances. It adds the amount sent (msg.value) to the specific balance of the person who called the function (msg.sender).
        s_balances[msg.sender] += msg.value;

        /// @notice Adds the address of the person making the deposit to an array called s_depositors for tracking purposes. 
        s_depositors.push(msg.sender);
    }


    /// @notice Withdrawal function (sends ETh back to the user)
    function withdrawal(uint256 _amount) public {

         require(_amount > 0, "Invalid amount");

        /// @notice Checks user has enough balance enough greater than amount to be withdrawn
        require(s_balances[msg.sender] >= _amount, "Insufficient Funds");

        /// @notice if the validation passed .Deducts balance before sending
        s_balances[msg.sender] -= _amount;

        /// @notice Transfering the funds. Sends exactly _amount
        (bool callSuccess, ) = payable(msg.sender).call{value: _amount}("");

        /// @notice Reverts if transfer fails
        require(callSuccess, "Transfer Failed");
    }


    /// @notice checkBalance function: Made it a view function, becus it does not change data.  The function allows a user to check their own internal balance within the smart contract. 
    function checkBalance() public view returns(uint256) {

        /// @notice returning the senders remaining balance left
        return s_balances[msg.sender];
    }



}

