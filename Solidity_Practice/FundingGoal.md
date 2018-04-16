## 펀딩 목표에 따라 보상해주기

### Apply DApp
- Campaign의 멤버 변수로 bool 타입의 closed를 선언
- createCampaign의 인스턴스 생성 시 closed의 초기값을 false로 선언
- 펀딩 금액을 달성 했는지 체크하는 checkFundingGoal()함수를 선언
  - 파라미터로 uint _campaignId를 받음
  - pledgedFund와 fundingGoal을 비교해 목표가 달성되었는지 체크
  - 목표가 달성되면 msg.sender에게 pledgedFund 만큼의 금액을 transfer해야 함
  - FundTransfer 이벤트를 호출
