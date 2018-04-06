pragma solidity ^0.4.18;

contract LeapYear{
  uint private year = 2018;

  function isLeapYear() public view returns (bool){
    return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
  }
}
