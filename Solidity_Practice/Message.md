## Message Property
- 계약이 이더를 보낸 사람을 파악하는 방법 => message property
- 계약은 msg 프로퍼티를 사용해 계약을 호출한 사람이 보낸 메지를 확인 함
- msg 프로퍼티는 다음과 같은 정보를 담음

| 명      | 타입     | 정의                                       |
| ------ | ------ | ---------------------------------------- |
| data   | byte   | 호출 데이터                                   |
| sender | adress | 게약을 호출한 이더리움 주소                          |
| value  | uint   | 게약 주소로 보낸 ether량                         |
| gas    | uint   | gas limit 에서 향수를 호출하고 남은 가스              |
|        |        | gas limit - 그 계약에서 한 번 호출로 소비할 수 있는 최대의 갸스량 |

