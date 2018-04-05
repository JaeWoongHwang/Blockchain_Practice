pragma solidity ^0.4.18;

contract Solution {
  string message = "Hello Solidity";

  function setMessage() public {
    uint count = 3;

    for(uint i = 0; i< count; i++){
      message = "Hello Transaction!";
    }
  }
}
