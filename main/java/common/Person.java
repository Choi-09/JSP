package common; // 규약1번) 기본패키지 이외의 패키지

public class Person { //1. 클래스 정의
	private String name;	// 규약2번) private 멤버 변수 2. 필드작성
	private int age;		// 규약2번) private 멤버 변수
	
	public Person() {}		// 규약3번) 기본 생성자  3. 기본생성자
	public Person(String name, int age) {		//4. 모든필드 포함한 생성자 
		super();
		this.name = name;
		this.age= age;
	}
	
	// 규약 4,5번) public 게터/세터 메서드들  5. 게터세터
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}

// 클래스 정의
// 필드 작성
// 기본생성자, 모든필드 포함 생성자, 게터세터