# JSP

1. DB 연결
```
    1) 프로젝트 우클릭 Build Path
    2) Configure build path 
    3) ModulePath 선택 
    4) Add Externall JAR 
    5) mysql 설치폴더 (C:\Program Files (x86)\MySQL\Connector J 8.0) 
    6) ApplyClose
    
    - Db,Java연결 시 참고사이트: https://heather-hm.tistory.com/3
```
2. java가 데이터베이스에 접근하는 방법
```
  1) Connection: DB와 연결하기 위해 사용하는 객체. parameter: data의 위치(URL), data 
  2-1) Statement: SQL실행시키는 객체. Connection 객체로부터 Instance화하여 만들어 내며 DB에 SQL을 보내기 위한 준비작업과 실제 SQL을 실행하여 결과값을 주는 API를 제공.
  2-2) PreparedStatement: SQL실행시키는 객체. 
  3) ResultSet : 결과데이터 가져옴

```
  -- Statement VS PreparedStatement
    
3. 용어 설명
```
   1) DAO(Data Access Object): 데이터 베이스에 접속해서 데이터를 추가, 삭제, 수정 등의 작업을 하는 클래스.
                               코드의 간결화 및 모듈화 유지보수 등의 목적을 위해 별도의 DAO 클래스를 생성하여 사용하는 것이 좋다.
   2) DTO(Data Transfer Object): DB에 있는 데이터를 Java 형태로 만들어주는 중간매체(변환).  
                                 테이블 정보를 가지고 테이블의 컬럼들을 변수로 선언, 초기화 후 getter를 이용하여 값을 가져올 수 있어야한다.
```   

![image](https://user-images.githubusercontent.com/51871037/200109663-e83a42e5-d91d-4811-b925-28c7842ba07c.png)
   >> 데이터 베이스와 통신하기 위한 기능을 모듈화하는 방법
 
