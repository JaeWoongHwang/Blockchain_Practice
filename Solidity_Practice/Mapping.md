## Mapping

### Problem
- Structs.sol 코드의 문제점은 계약이 여러번 호출되면, 이전에 생성된 캠페인의 정보가
사라진다는 점
- 계약이 여러번 호출 돼도 이전의 데이터를 간직하도록 코드를 수정 -> mapping 사용

### Mapping Description
- 맵핑은 Key-Value가 쌍을 이루는 자료구조(해시 테이블과 유사)
- 맵핑의 특징
  - mapping 키워드로 선언
  - 선언시, Key타입과 Value타입을 지정해 주어야 함
  - Key로 Value를 불러올 수 있음
  - 사용 예
  ~~~
  // Key로 address를 Value로 uint를 사용하는 맵핑
  mapping(address => value) public balances;

  function open(uint newBalance) public {
     balances[msg.sender] = newBalance;
  }

  ~~~
