pragma solidity ^0.4.18;

contract Solution {
  string message = "Hello Solidity";

  function setMessage() public {
    message = "Hello Transaction!";
  }
}
