## Error Handling

### To do
- 캠페인 생성자는 자신의 아이디어에 펀딩할 수 없게끔 설정

### Solidity's Error Handling
- 자신의 캠페인에 펀딩하려는 경우 오류로 처리
  - require(bool조건)
    - 조건을 만족하지 않으면 오류를 발생시킴
    - 예. 파라미터 값이 짝수일 때만 허용하는 조건식
    ~~~
    function half(uint x){
      require(x%2==0);
    }
    ~~~

### Note
- 솔리디티에는 catch 메커니즘이 없음. 오류가 발생하면 진행 중인 스마트 계약은 즉시 종료 되며,
모든 상태는 호출되기 전으로 되 돌아감. 하지만 이 때 계약을 호출할 때 소비한 가스는 반환되지 않음
- 솔리디티의 오류 처리 구문
  - assert, require, revert, exceptions
