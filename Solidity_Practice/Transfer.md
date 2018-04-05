## Send Ethereum chapter2

### Flow of sending ethereum
- A가 계약을 통해 B에게 10 이더를 보내면, 이더는 다음과 같이 이동
- A가 계약에게 10 이더를 송금
- 계약이 B에게 10 이더를 송금

### Transfer function
- transfer 함수를 사용하면 계약이 다른 이에게 이더를 전송 함
- transfer 함수 사용 방법
~~~
  <받는사람의 주소>.transfer(<송금할 금액>);
~~~
- 예로. 계약이 seller 에게 10만큼의 이더를 전송하는 함수, buy를 구현한 예
~~~
  function buy() public {
    seller.transfer(10);
  }
~~~
