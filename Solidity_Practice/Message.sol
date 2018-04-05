pragma solidity ^0.4.18;

contract Solution{
  // Loging event
  event message{
    bytes _data,
    address _sender,
    uint _value,
    uint _gas
  };

  function checkMsg() payable public {
    // Call event
    message{
      msg.data,
      msg.sender,
      msg.value,
      msg.gas
    };
  }
}
