pragma solidity ^0.4.18;

contract Crowdfunding {
    struct Campaign {
        uint id;
        address creator;
        mapping (address => uint) balanceOf;
        uint fundingGoal;
        uint pledgedFund;
        uint deadline;
        bool closed;
        // closed 멤버 변수를 추가해주세요.
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

    event FundTransfer(
        uint indexed _id,
        address indexed _creator,
        uint _pledgedFund,
        bool _closed
    );

    function createCampaign(uint _fundingGoal) public {
        campaigns[campaignsId] = Campaign(campaignsId,
                                          msg.sender, _fundingGoal,
                                          0, getDeadline(now),
                                          /* closed의 초기값 */ false);

        Campaign memory c = campaigns[campaignsId];
        GeneratedCampaign(campaignsId, msg.sender,
                          c.fundingGoal,
                          c.deadline);
        campaignsId++;
    }

    function fundCampaign(uint _campaignId) payable public {
        require(msg.sender != campaigns[_campaignId].creator);

        campaigns[_campaignId].pledgedFund += msg.value;
        campaigns[_campaignId].balanceOf[msg.sender] += msg.value;

        FundCampaign(_campaignId, msg.sender, msg.value,
                     campaigns[_campaignId].pledgedFund);
    }

    // 펀딩 금액을 지급해주는 다음 함수를 완성해주세요!
    function checkFundingGoal(uint _campaignId) public {
        if (campaigns[_campaignId].fundingGoal == campaigns[_campaignId].pledgedFund) {
            campaigns[_campaignId].closed = true;
            // 캠페인 creator에게 transfer 해주세요.
            msg.sender.transfer(msg.value);
            // FundTransfer 이벤트를 호출해주세요.
            FundTransfer(_campaignId, msg.sender,
                          campaigns[_campaignId].pledgedFund, campaigns[_campaignId].closed);
        } else {
            revert();
        }
    }

    function getDeadline(uint _now) private pure returns (uint) {
        return _now + (3600 * 24 * 7);
    }
}
