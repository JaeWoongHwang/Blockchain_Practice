## Transaction

### Definition of Transaction
- 스마트 계약을 실행하면 거래가 블록체인 이더리움에 기록 됨
- 이 기록은 트랜잭션이라는 특수한 형태로 지정
- 트랜잭션은 계약을 수행하는데 돈 수수료(가스)등 다양한 정보를 담고 있음

### Transaction's inforamtion
- transactionHash : 트랜잭션의 해시
- transactionIndex : 트랜잭션의 인덱스 값
- blockHash : 이 트랜잭션이 추가 된 블록의 해시값
- blockNumber : 이 트랜잭션이 추가 된 블록의 번호
- gasUsed : 이 트랜잭션 호출에 소비한 가스량
- cumulativeGasUsed : 누적으로 사용된 가스량
- contractAddress : 계약의 주소
- logs : event로 로깅된 정보

### Note
- 트랜잭션들이 모여 하나의 블록을 이룸
- 이더리움 네트워크 상에는 이러한 블록들이 체인처럼 엮인 모습을 하고 있기 때문에
블록체인이라고 부름
