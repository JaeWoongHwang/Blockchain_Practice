pragma solidity ^0.4.18;

contract Crowdfunding {
    struct Campaign {
        // creator 멤버 변수는 맵핑의 Key로 대체 됨
        uint fundingGoal;
        uint pledgedFund;
        uint deadline;
    }

    // 맵핑으로 campaigns를 선언
    /* Key로는 생성자의 이더리움 주소를 저장,
    Value로는 구조체 Campaign을 저장 */
    mapping (address => Campaign) public campaigns;

    function createCampaign(uint256 _fundingGoal) public {
        // campaigns에 Campaign 인스턴스를 대입
        // campaigns에 Key 값은 msg.sender여야 함
        campaigns[msg.sender] = Campaign(_fundingGoal, 0, getDeadline(now));
    }

    function getCampaign() public view returns (uint, uint, uint) {
        Campaign memory c = campaigns[msg.sender];
        return (c.fundingGoal, c.pledgedFund, c.deadline);
    }

    function getDeadline(uint _now) public pure returns (uint) {
        return _now + (3600 * 24 * 7);
    }
}
