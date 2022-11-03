package com;

//객체생성 : DB를 내 컴퓨터 화면에서만 출력하는게 아니라 클라이언트로 보내줘야함.
public class CountryDTO {
	//필드정의
	private String code;
	private String name;
	private int Population;
	private float GNP;
	
	//기본생성자
	public CountryDTO() {
		
	}
	
	//필드생성자
	public CountryDTO(String code, String name, int Population, float GNP) {
		super();
		this.code = code;
		this.name = name;
		this.Population = Population;
		this.GNP = GNP;
	}
	
	// 게터와 세터
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPopulation() {
		return Population;
	}

	public void setPopulation(int population) {
		Population = population;
	}

	public float getGNP() {
		return GNP;
	}

	public void setGNP(float GNP) {
		GNP = GNP;
	}
	
	//toString
	@Override
	public String toString() {
		return "CountryDTO [code = " + code + ", name =" + name + ", Population = " + Population + ", GNP = " + GNP +"]";
	}
}
