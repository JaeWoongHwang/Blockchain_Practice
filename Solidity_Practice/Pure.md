## Function Pure

### Function Pure Description
- pure 키워드를 붙인 함수는 가스를 소비하지 않음
- pure 함수의 특징
  - 블록체인 네트워크에 기록 된 데이터에 아예 접근하지 않음
  - 파라미터로 주어지지 않은 상태변수는 읽거나 쓸 수 없음
- 함수형 언어의 순수 함수(pure function)와 의미가 같음

### Example for using function pure
~~~
function multiply(uint a) public pure returns (uint){
  return a*3;
}
~~~

### Comparison to function view

| 구분              | 일반함수 | view 함수 | pure 함수 |
| --------------- | ---- | ------- | ------- |
| 네트워크에 기록된 상태 읽기 | O    | O       | X       |
| 네트워크에 기록된 상태 쓰기 | O    | X       | X       |
| 호출 시 가스소모       | O    | X       | X       |
