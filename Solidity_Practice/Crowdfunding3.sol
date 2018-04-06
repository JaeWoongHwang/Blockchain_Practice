pragma solidity ^0.4.18;

contract Crowdfunding {
    address public creator;
    uint public fundingGoal;
    uint public deadline;
    uint public now;

    function createCampaign(uint _fundingGoal) public {
        creator = msg.sender;
        fundingGoal = _fundingGoal;
        deadline = getDeadline(now);
    }

    // getFundingGoal() 함수를 view 함수로 작성해보세요.
    function getFundingGoal() public view returns (uint){
      return fundingGoal;
    }

    // 일주일 뒤의 날짜를 반환하는 getDeadline(uint _now) 함수를 pure 함수로 작성해보세요.
    function getDeadline(uint _now) public view returns (uint){
      now = _now + 604800;
      return now;
    }
}
