pragma solidity ^0.4.18;

contract Crowdfunding {
    struct Campaign {
        uint fundingGoal;
        uint pledgedFund;
        uint deadline;
    }

    mapping (address => Campaign) campaigns;

    // 이벤트 GeneratedCampaign를 작성
    event GeneratedCampaign(
      address creator,
      uint _fundingGoal,
      uint _deadline
      );

    function createCampaign(uint256 _fundingGoal) public {
        campaigns[msg.sender] = Campaign(_fundingGoal, 0, getDeadline(now));

        Campaign memory campaign = campaigns[msg.sender];
        // 위에서 선언한 이벤트를 호출
        GeneratedCampaign(msg.sender, _fundingGoal, getDeadline(now));
    }

    function getDeadline(uint _now) public pure returns (uint) {
        return _now + (3600 * 24 * 7);
    }
}
