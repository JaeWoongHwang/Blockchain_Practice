## Solidity's data type
- 솔리디티는 다른 언어와 마찬가지로, 다양한 자료형을 지원 함
- 단, 부동소수점 자료형(float)는 지원하지 않음
- 부동소수점을 지원하지 않는 이유 : 부동소수점 타입으로는 수를 정확하게 표현하지 못함.
  수를 정확히 다룰 수 없는 타입은 이더(Ether)2를 다룰 수 없어, 솔리디티는 부동소수점을 지원하지 않음.

### Data type
- uint : 부호가 없는 정수형
- int : 정수형
- bool : 논리 자료형
- string : UTF&8 인코딩 문자열
- bytes : 바이트
- address : 이더리움 주소 값 (0xaDc7192A0…)

### Solidity's reference data type
- 배열 : 자료형이 같은 데이터를 묶은 자료 구조
- 구조체 : 다양한 자료형의 데이터를 묶은 자료 구조

### Solidity's int type
- 솔리디티의 정수 자료형은 그 크기를 명시할 수 있음
- 예로, uint, uint8, uint256과 같이 크기 명시 가능
- int, int8, int256과 같이 크기 명시 가능
