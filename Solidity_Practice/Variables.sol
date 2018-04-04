pragma solidity ^0.4.18;

contract Variables {
    string public name = "James";
    uint128 public birthday = 20180328;
    address public addr = 0x72ba7d8e73fe8eb666ea66babc8116a41bfb10e2;
    uint[] setOfYear = [2018, 2019, 2020];

    // Definition variable
    uint year = setOfYear[0];
    bool isHappy = true;

    // Setter function
    function setYear() public {
        year = 2018;
    }

    // Getter function
    function getYear() public view returns(uint){
         return year;
    }

    // Getter function
    function getHappy() public view returns(bool){
          return isHappy;
    }
}
