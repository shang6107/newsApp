package com.test.common;
   
public enum Prompt {
	
	success("success"),
	
	login("001"),//登陆失败
	
	fail("002"),//新增或修改失败
	
	noexistent("003"),//不存在
	
	deleterror("004"),//删除失败
	
	;
	
	private String name;
	
	Prompt(String name){
		this.name= name;
	}
	
	public String getName(){
		return name;
	}
}
