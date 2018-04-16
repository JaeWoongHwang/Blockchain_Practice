## Purpose
- FundingGoal.sol 코드의 문제는 누구나 보상 함수를 호출 할 수 있다는 것
- 따라서 함수 호출을 제어할 필요가 있음
- 목표 금액을 달성했다면 펀딩 자금은 아이디어 등록자가 가짐

### Function Modifiers
- 함수 제어자는 커스텀 할 수 있는 제어자(반면 접근제어자는 커스텀이 불가능)
- 함수 제어자의 특징
  - modifier 키워드로 선언
  - 함수 호출 시 함수 제어자를 명시해주면 실행 시 오류를 처리할 수 있음
  - 모든 실행 조건을 만족했을 경우 언더바 `_`로 표시
  - 예) owner만 가격을 수정할 수 있도록 허용하는 함수 제어자
  ~~~
  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function changePrice(uint _price) public onlyOwner{
    price = _price;
  }
  ~~~

### To do
- 펀딩한 금액은 캠페인의 creator가 받아야 하며 다른사람이 받아선 안 됨
- 따라서 checkFundingGoal() 함수 호출을 제어해야 함
  - 함수 제어자 campaignOwner를 작성
  - campaignOwner는 캠페인의 creator가 msg.sender이어야 함
  - checkFundingGoal() 함수 선언부에서 함수 제어자 campaignOwner를 호출

### Note
- 함수 제어자는 함수처럼 arguments를 받을 수 있음
- 함수 제어자를 사용하면 솔리디티 코드가 간결해 짐
- 상속과 함께 적용하면 코드를 모듈화 할 수 있음
