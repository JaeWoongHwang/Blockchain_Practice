pragma solidity ^0.4.18;

contract Crowdfunding {
  struct Campaign{
    // 캠페인 생성자의 이더리움 주소
    address creator;
    // 펀딩 목표
    uint fundingGoal;
    // 현재 펀딩 된 금액
    uint pledgedFund;
    // 마감일
    uint deadline;
  }
  Campaign campaign;

  function createCampaign(uint256 _fundingGoal) public {
    // Campaign 구조체의 인스턴스를 생성
      campaign = Campaign(msg.sender, _fundingGoal, 0, getDeadline(now));
  }

  function getCampaign()public view returns(uint, uint, uint){
    return (campaign.fundingGoal, campaign.pledgedFund, campaign.deadline);
  }

  function getDeadline(uint _now) public pure returns(uint){
      return _now + (3600 * 24 * 7);
  }
}
