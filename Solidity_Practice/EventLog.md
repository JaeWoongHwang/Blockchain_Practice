## Logging as an event

### Event
- 계약이 수행 된 정보는 트랜잭션으로 기록 됨
- 트랜잭션에 기록하고 싶은 것이 있다면 이벤트를 활용
  - event 키워드로 선언
  - 이벤트 안에 명시 된 데이터를 트랜잭션에 로깅 함
  - 물건이 구입될 때 마다 구매자의 이더리움 주소와 결제 금액을 기록하는 이벤트 선언/호출 예시  
  ~~~
  event BuySomething(
    address indexed _buyer,
    uint256 _value
    );

  function buy() payable public {
    seller.transfer(msg.value);
    // Call event
    BuySomething(msg.sender, msg.value);
  }  
  ~~~

### Apply Dapp
- 크라우드펀딩 DApp에서 캠페인을 생성할 때마다 로그를 기록해 정보를 남기려고 함
- GeneratedCampaign 이벤트를 선언. 이벤트는 다음 기록을 남겨야 함
  - address _creator
  - uint _fundingGoal
  - uint _deadline
- 선언한 이벤트를 createCampaign() 함수 내에서 호출
