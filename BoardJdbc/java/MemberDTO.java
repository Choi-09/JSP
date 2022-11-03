//DTO 만들기: 1.클래스생성 2.field 정의 3.기본생성자 4.모든 필드 포함한 생성자 5.getter,setter 
package com.domain;

public class MemberDTO {
	private String id;
	private String pass;
	private String name;
	private String regidate; 
	
	public MemberDTO() {
		
	}

	// 소스에서 편리하게 추가
	public MemberDTO(String id, String pass, String name, String regidate) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.regidate=regidate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getRegidate() {
		return regidate;
	}

	public void setRegidate(String Regidate) {
		this.name = regidate;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pass=" + pass + ", name=" + name + ", regidate= " + regidate +"]";
	}
	
	
	
	
}
