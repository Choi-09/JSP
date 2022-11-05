# JSP

1. DB 연결
```
    * 프로젝트 우클릭 Build Path
    * Configure build path 
    * ModulePath 선택 
    * Add Externall JAR 
    * mysql 설치폴더 (C:\Program Files (x86)\MySQL\Connector J 8.0) 
    * ApplyClose
    
    - Db,Java연결 시 참고사이트: https://heather-hm.tistory.com/3
```
2. java가 데이터베이스에 접근하는 방법
```
  (1) Connection:
  (2) Statement:
  (3) ResultSet : 결과데이터 가져옴

```
3. 용어 설명ㅇ
DAO란 데이터 베이스에 접속해서. 데이터 추가, 삭제, 수정 등의 작업을. 하는 클래스 입니다

![image](https://user-images.githubusercontent.com/51871037/200109663-e83a42e5-d91d-4811-b925-28c7842ba07c.png)
>>데이터 베이스와 통신하기 위한 기능을 모듈화하는 방법

DTO란 DB에 있는 데이터를 Java 형태로 만들어주는 중간매체(변환) 이다.
