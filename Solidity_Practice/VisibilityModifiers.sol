pragma solidity ^0.4.18;

contract Caller {
    Host host = new Host();

    function f() public view returns (uint, uint) {
        // public으로 선언한 상태 변수는 자동으로 Getter 함수가 생성되어
        // 아래와 같이 바로 호출할 수 있음
        uint hostGrade = host.grade();
        uint hostAge = host.age();

        return (hostGrade, hostAge);
    }
}

contract Host {
    uint public grade = 4;
    uint public age = 34;
}
