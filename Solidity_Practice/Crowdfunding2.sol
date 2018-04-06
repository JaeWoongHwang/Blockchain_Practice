pragma solidity ^0.4.18;

contract Crowdfunding {
  address public creator;

  // Get creator's address
  function createCampaign() public {
    creator = msg.sender;
  }
}
