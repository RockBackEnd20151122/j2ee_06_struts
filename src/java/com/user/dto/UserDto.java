package com.user.dto;

import java.util.Date;
import java.util.List;

public class UserDto {
	
	private String name;
	private String password;
	private String gender;
	private int age;
	private Date birthday;
	private String country;
	private List<String> addressList;
	private List<String> loves;
	
	@Override
	public String toString(){
		return "name:" + this.name+ " password:"+ this.password + " sex:"+ this.gender+ 
				"age:"+ this.age+ "birthday:"+ this.birthday +"country:" + this.country 
				+ "habbits"+ this.loves + "address:"+ this.addressList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public List<String> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<String> addressList) {
		this.addressList = addressList;
	}

	public List<String> getLoves() {
		return loves;
	}

	public void setLoves(List<String> loves) {
		this.loves = loves;
	}	
	
}
