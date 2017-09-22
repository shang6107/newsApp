package com.test.page;

public class EmailPage extends Page{

	private String sender;//发送人账号
	private String receive;//接收人账号
	private int show = 1;//显示或不显示
	
	public int getShow() {
		return show;
	}
	public void setShow(int show) {
		this.show = show;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceive() {
		return receive;
	}
	public void setReceive(String receive) {
		this.receive = receive;
	}
	
}
