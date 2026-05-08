// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {SimpleBank} from "../src/SimpleBank.sol";

contract SimpleBanKTest is Test {

    /** State Variables */
    SimpleBank simplebank;
    
    address public DEPOSITOR = makeAddr("depositor");
    uint256 public constant STARTING_DEPOSITORS_AMOUNT = 2 ether;
    uint256 minEthAmount ;


    /** Functions */

    /// @notice Function setup () - it runs after deployment
    function setUp() public {
        simplebank = new SimpleBank();
        minEthAmount = simplebank.MINIMUM_ETH(); // The original minimumEth on main contract
    }


    /// @notice Function , test checking if the amount to be deposited is greaterthan or equal the Minimum_Eth value required- Test passes becus the Fake Depositor Eth amount 2 is greaterthan the minimumEth 1 
    function testDepositSucceedsIfAboveMinimum() public {
        // ARRANGE
        vm.deal(DEPOSITOR, STARTING_DEPOSITORS_AMOUNT); // giving a fake user an eth balance of 2 ether
        vm.prank(DEPOSITOR); //  vm.prank is a cheat code used in Solidity tests to impersonate a specific address for the next contract call

        // ACT:  Deposit the value
        simplebank.deposit{value: minEthAmount}(); 

        // ASSERT
        vm.prank(DEPOSITOR);
        uint256 balance = simplebank.checkBalance();
        assertEq(balance, minEthAmount);
    }


    /// @notice Function testDepositRevertsIfBelowMinimum(), test that reverts if the when Eth provided is low
    function testDepositRevertsIfBelowMinimumValue() public {
        // ARRANGE
        vm.deal(DEPOSITOR, STARTING_DEPOSITORS_AMOUNT);
        vm.prank(DEPOSITOR);

        // ACT / ASSERT
        vm.expectRevert("Did not send enough Eth");  // confirms failure
         simplebank.deposit{value: minEthAmount - 1}(); //sends insufficient ETH
         
    }



}



