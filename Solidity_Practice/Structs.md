## Structs
- 구조체를 사용하면 다양한 자료형의 데이터를 묶을 수 있음
- 구조체 예
~~~
  structs Person{
    string name;
    uint age;
    address wallet;
  }

  function birthday(){
    Person P = Person("James", 26, 0x7Df34...);
    P.age += 1;
  }
~~~
