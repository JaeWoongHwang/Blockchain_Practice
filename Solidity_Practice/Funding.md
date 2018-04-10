## Apply DApp

### To do
- 누구나 원하는 금액만큼 캠페인에 펀딩할 수 있음
- 펀딩을 해준 사람에 대한 기록이 남음

### DApp
- Campaign 구조체에 다음의 멤버 변수를 추가
  - uint id (캠페인의 식별자)
  - mapping(address => uint) balanceOf (펀딩내역)
  
