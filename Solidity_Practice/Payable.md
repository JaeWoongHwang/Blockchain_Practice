## Send Ethereum chapter1
- 사람 뿐만 아니라, 스마트 계약도 내부적으로 이더리움 계정(이를 계약계정이라 함 Contract Accounts, CA)를 가짐
- 스마트 계약은 계약 계정를 통해 이더를 거래
- 예로, 계약을 통해 A가 B에게 10 이더를 보내는 계약을 호출할 때, 이더의 이동 플로우
1. A가 A 계정에서 계약 계정으로 10 이더를 송금
2. 계약이 계약 계정에서 B 계정으로 10이더를 송금

### Payable keyword
- payable 키워드는 계약 계정에 외부에서 이더를 송금 받을 수 있게 함
- 계약이 A에게 송금을 받으려면, A가 호출하는 함수에 payable 키워드가 있어야 함
~~~
//payable 함수 사용법
function functionName() payable public{
  //...
}
~~~
