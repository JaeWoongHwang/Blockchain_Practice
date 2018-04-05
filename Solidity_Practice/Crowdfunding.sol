pragma solidity ^0.4.18;

contract Crowdfunding {
  address ideaCreator;
  uint256 balance = 0;
    /* Problem Condition
    누구나 펀딩을 생성할 수 있어야 함
    아이디어를 등록할 때 목표금액과 목표금액 달성 기간을 설정해야 함
    누구나 등록된 아이디어에 원하는 금액만큼 펀딩할 수 있어야 함
    기간 내에 목표금액을 달성하면 아이디어 등록자에게 펀딩 자금을 줘야 함
    기간 내에 목표금액을 달성하지 못하면 펀딩 금액을 펀딩한 사람들에게 돌려줘야 함
    */
  function setFunding() payable public {
    uint goalValue = 100;
    uint goalDate = 7;

    if(goalValue >=100 && goalDate <=7){
      ideaCreator.transfer(goalValue);
    } else {
      msg.sender.trasfer(goalValue);
    }
  }

  // Get ideaCreator's address
  function set(address _ideaCreator) public {
      ideaCreator = _ideaCreator;
  }


  // Send ether
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
