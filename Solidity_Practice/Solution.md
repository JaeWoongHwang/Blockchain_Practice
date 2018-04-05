## Operator and Control Structures
- 솔리디티에서는 연산자와 제어문을 사용할 수 있음

### Solidity's Operator
- 논리 연산자 : !, &&, ||
- 비교 연산자 : <=, <, ==, !=, >=, >
- 비트 연산자 : &, |, ^, <<, >> (시프트 연산자)
- 단항(unary)산술 연산자 : +, -
- 이항(binary)산술 연산자 : +, -, *, /(몫), %(나머지), **(거듭제곱)

### Solidity's Control Structures
- 조건문 : if, else, ?: (삼항 연산자)
- 반복문 : while, do, for
- 반복문 분기 : continue, break
- 반환문 : return

- 여타 언어의 switch/case나 goto 문은 지원하지 않음
- 솔리디티는 자동 형 변환(type conversion)을 하지 않음. 예를 들어 if (true) { ... }는 허용하지만 if (1) { ... }는 허용하지 않음.
