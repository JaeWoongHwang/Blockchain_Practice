pragma solidity ^0.4.18;

contract Solution{
  uint256 balance = 0;

  // Remit ether
  function sending() payable public {
    balance = msg.value;
    Sended(msg.value, balance);
  }

  // Loging event
  event Sended{
    uint256 _value;
    uint256 _balance;
  };
}
