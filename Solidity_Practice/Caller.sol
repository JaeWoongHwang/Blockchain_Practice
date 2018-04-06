pragma solidity ^0.4.18;

contract Caller {
  Host host = new Host();

  function f() public returns (uint, uint){
    uint hostGrade = host.grade();
    uint hostAge = host.age();

    return (hostGrade, hostAge);
  }
}

contract Host {
  uint public grade = 4;
  uint public age = 20;
}
