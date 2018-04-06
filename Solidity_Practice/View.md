## Function View
- 스마트 계약은 실행하는데 수수료가 발생. 데이터를 읽기만 하는 단순 작업은 가스를 소모시키지
않게 설정 => 읽기전용 설정

### Function View Description
- View 함수는 상태를 변경하지 않음 : 블록체인 네트워크 상의 데이터를 읽기만 할 수 있고 데이터를 수정할 수 없음
- 가스를 소모하지 않음 : 호출할 때 Gas를 사용하지 않음

### Example for using function view
~~~
pragma solidity ^0.4.18;

contract Variables{
  uint year = 2020;

  function get() public view returns (uint){
    return year;
  }
}
~~~
