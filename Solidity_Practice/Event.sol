  pragma solidity ^0.4.18;

  contract Solution {
      address friend;

      // 이벤트 SendEther를 완성하세요.
      event SendEther(
          address indexed _sender,
          // 받는 사람의 주소인 address 타입의 _friend,
          address _friend,
          // 보내는 이더 금액 uint 타입의 _value
          uint _value
      );

      function transfer() payable public {
          friend.transfer(msg.value);
          // SendEther 이벤트를 호출
          SendEther(msg.sender, msg.friend, msg.value);
      }

      // friend의 주소를 받아 저장하는 함수
      function set(address _friend) public {
          friend = _friend;
      }
  }
