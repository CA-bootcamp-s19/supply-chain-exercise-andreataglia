pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SupplyChain.sol";

contract TestSupplyChain {

    // Test for failing conditions in this contracts:
    // https://truffleframework.com/tutorials/testing-for-throws-in-solidity-tests

    // Truffle will send the TestContract ten Ether after deploying the contract.
    uint public initialBalance = 10 ether;

    // buyItem

    // test for failure if user does not send enough funds
    // test for purchasing an item that is not for Sale
    function buyItem() public {
      SupplyChain supplyChain = SupplyChain(DeployedAddresses.SupplyChain());
      supplyChain.addItem("testItem", 5);

      // (bool r, ) = supplyChain.buyItem(0).value(4);
      // Assert.isFalse(r, "If this is true, something is broken!");
    }


    // shipItem

    // test for calls that are made by not the seller
    // test for trying to ship an item that is not marked Sold

    // receiveItem

    // test calling the function from an address that is not the buyer
    // test calling the function on an item not marked Shipped

}
