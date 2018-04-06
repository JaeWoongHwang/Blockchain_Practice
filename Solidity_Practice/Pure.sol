pragma solidity ^0.4.18;

contract LeapYear{
  uint private year = 2018;

  //isLeapYear()의 괄호안엔 상태변수 year가 아닌 파라미터 year가 들어가야 함
  // pure 함수를 통해 가스를 절약
  function isLeapYear(uint year) public pure returns(bool){
    return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
  }
}
