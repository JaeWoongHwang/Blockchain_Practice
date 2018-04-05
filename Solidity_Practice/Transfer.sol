pragma solidity ^0.4.18;

contract Solution {
    address friend;

    function transfer() payable public {
        /* 받는 사람의 주소인 friend를 <address> 대신 넣음
         * <value> 대신 msg.value을 넣음
         * sendEther()가 호출되면 msg.sender가 10이더를 계약 주소에 보내게 되고
         * 계약이 10이더를 friend에게 보냄
         */

         /* Standard structure
         <address>.transfer(<value>); */

        friend.transfer(msg.value);
    }

    // friend의 주소를 받아 저장하는 함수
    function set(address _friend) public {
        friend = _friend;
    }
}
