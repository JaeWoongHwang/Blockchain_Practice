pragma solidity ^0.4.18;

contract Crowdfunding {
    struct Campaign {
        // 여기에 멤버 변수를 추가하세요.
        uint id;
        mapping (address => uint) balanceOf;
        address creator;
        uint fundingGoal;
        uint pledgedFund;
        uint deadline;
    }

    mapping (uint => Campaign) campaigns;
    uint campaignsId = 0;

    event GeneratedCampaign(
        uint indexed _id,
        address indexed _creator,
        uint _fundingGoal,
        uint _deadline
    );

    event FundCampaign(
        uint indexed _id,
        address indexed _funder,
        uint _amount,
        uint _pledgedFund
    );

    function createCampaign(uint _fundingGoal) public {
        campaigns[campaignsId] = Campaign(campaignsId, msg.sender, _fundingGoal, 0, getDeadline(now));

        Campaign memory campaign = campaigns[campaignsId];
        GeneratedCampaign(campaignsId, msg.sender, campaign.fundingGoal, campaign.deadline);
        campaignsId++;
    }

    function fundCampaign(uint _campaignId) public payable {
        campaigns[_campaignId].balanceOf[msg.sender] += msg.value;
        //  캠페인의 pledgedFund에 msg.value 값을 더하기
        campaigns[_campaignId].pledgedFund += msg.value;
        // FundCampaign 이벤트를 호출
        FundCampaign(_campaignId, msg.sender, msg.value, campaigns[_campaignId].pledgedFund);
    }

    function getDeadline(uint _now) private pure returns (uint) {
        return _now + (3600 * 24 * 7);
    }
}
