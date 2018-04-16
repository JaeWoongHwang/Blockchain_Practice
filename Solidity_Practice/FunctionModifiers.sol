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
    }

    mapping (uint => Campaign) campaigns;
    uint campaignsId = 0;

    // 캠페인 생성자만 허용하는 함수제어자 campaignOwner
    modifier campaignOwner(uint _campaignId) {
        require(campaigns[_campaignId].creator == msg.sender);
        _;
    }

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
        campaigns[campaignsId] = Campaign(campaignsId, msg.sender,
                                          _fundingGoal, 0,
                                          getDeadline(now), false);

        Campaign memory campaign = campaigns[campaignsId];
        GeneratedCampaign(campaignsId, msg.sender,
                          campaign.fundingGoal, campaign.deadline);
        campaignsId++;
    }

    function fundCampaign(uint _campaignId) payable public {
        require(msg.sender != campaigns[_campaignId].creator);

        campaigns[_campaignId].pledgedFund += msg.value;
        campaigns[_campaignId].balanceOf[msg.sender] += msg.value;

        FundCampaign(_campaignId, msg.sender, msg.value,
                     campaigns[_campaignId].pledgedFund);
    }

    function checkFundingGoal(uint _campaignId)
    /* arguments에 유의하며, 함수 제어자 campaignOwner를 호출하세요. */
    public campaignOwner {
        Campaign memory c = campaigns[_campaignId];

        if (c.fundingGoal <= c.pledgedFund) {
             campaigns[_campaignId].closed = true;

            msg.sender.transfer(c.pledgedFund);
            FundTransfer(_campaignId, msg.sender,
                         c.pledgedFund,
                         campaigns[_campaignId].closed);
        } else {
            revert();
        }
    }

    function getDeadline(uint _now) private pure returns (uint) {
        return _now + (3600 * 24 * 7);
    }
}
