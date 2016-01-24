package com.user.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;
import com.user.dto.UserDto;

public class UserAction extends ActionSupport {
	
	private UserDto userDto;
	private List<UserDto> userList;
	
	public String addUser(){
		System.out.println(userDto);
		return this.SUCCESS;
		//HttpServletRequest request = ServletActionContext.getRequest();
	}
	
	public String queryUser(){
		Logger.getLogger("FILE").fatal(new Date()+ "fuck");
		Logger.getLogger("FILE").fatal(new Date());
		
		this.userList = new ArrayList<UserDto>();
		UserDto userDto1 = new UserDto();
		userDto1.setName("name1");
		userDto1.setAge(10);
		userDto1.setBirthday(new Date());
		userDto1.setGender("M");
		userDto1.setPassword("1315");
		List<String> list = new ArrayList<String>();
		list.add("a");
		list.add("b");
		list.add("c");
		userDto1.setLoves(list);
		List<String> addressList = new ArrayList<String>();
		addressList.add("testAddress1");
		addressList.add("testAddress2");
		userDto1.setAddressList(addressList);
		this.userList.add(userDto1);
		this.userList.add(userDto1);
		this.userList.add(userDto1);
		
		System.out.println(this.userList);
		return "success";
		 
	}
	
	public String deleteUser(){
		System.out.println(userDto);
		return "success";
	}
	
	public String modifyUser(){
		
		userDto= new UserDto();
		
		userDto.setName("name1");
		userDto.setAge(10);
		userDto.setBirthday(new Date());
		userDto.setGender("M");
		userDto.setPassword("1315");
		userDto.setCountry("01");
		List<String> list = new ArrayList<String>();
		list.add("a");
		list.add("b");
		list.add("c");
		userDto.setLoves(list);
		List<String> addressList = new ArrayList<String>();
		addressList.add("testAddress1");
		addressList.add("testAddress2");
		userDto.setAddressList(addressList);
		
		System.out.println(userDto);
		return "success";
	}
	
	public String updateUser(){
		System.out.println(userDto);
		
		
		return "success";
	}

	public UserDto getUserDto() {
		return userDto;
	}

	public void setUserDto(UserDto userDto) {
		this.userDto = userDto;
	}

	public List<UserDto> getUserList() {
		return userList;
	}

	public void setUserList(List<UserDto> userList) {
		this.userList = userList;
	}
	
	

}
