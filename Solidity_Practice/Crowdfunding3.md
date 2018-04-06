## Apply to Dapp
- 목표 금액을 리턴하는 getFundingGoal() 함수를 작성
- 이 함수는 목표 금액을 저장하는 상태 변수, fundingGoal를 Return 해야 하고 view 함수여야 함
- 목표 달성 기간을 구하는 getDeadline() 함수를 작성
- 이 함수는 unit 타입의 _now을 파라미터로 입력 받아야 함
- _now 보다 7일 뒤의 날짜를 unit 타입으로 Return
- 이때, uint 타입은 timestamp 형식으로 표현하고 pure 함수여야 함
- timestamp 형식 예) _now가 1522379044이면 1522983844를 반환하세요. ( 7일 = 7*24시간 = 7*24*60분 = 7*24*60*60초) 
