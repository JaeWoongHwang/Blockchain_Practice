## Visibility Modifiers
- 솔리디티에선 접근 제한자를 통해 변수와 함수에 접근 범위를 제한 할 수 있음

### Solidity's Visibility Modifiers
- public
  - public으로 선언 된 함순는 외부에서 호출이 가능
  - public으로 상태 변수를 선언하면 자동으로 getter함수를 생성해 줌
  - 접근 제한자를 명시하지 않은 함수는 default로 public이 선언 됨
- internal
  - internal 상태변수, 함수를 선언한 계약과 이를 상속받은 계약에서만 호출할 수 있음
  - 접귽 제한자를 명시하지 않은 상태변수는 default로 internal이 선언 됨
- private
  - private가 선언돈 상태변수, 함수는 해당 계약에서만 호출할 수 있음
  - 상속 받은 계약도 private 상태변수, 함수는 호출할 수 없음
- external
  - 인터페이스 함수를 의미
  - external 상태변수, 함수를 선언한 계약 내부에서는 이 상태변수, 함수를 호출할 수 없음

### Example
~~~
// 상태변수에 접근제한자 사용
string private secret = "password is 1234";

// 함수에 접근제한자 사용
function f() public returns(uint){
}
~~~
