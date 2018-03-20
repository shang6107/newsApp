package com.test.model;

import java.util.Date;

/**
 * email
 * @author Administrator
 *
 */
public class Email {

	private int id;
	private String title;//标题
	private String context;//内容
	private String sender;//发送人账号
	private String receive;//接收人账号
	private int show;//0不显示 1显示
	private int see_state;//0未读 1已读
	private Date create_time;//创建时间
	

	public int getShow() {
		return show;
	}
	public void setShow(int show) {
		this.show = show;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
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
	public int getSee_state() {
		return see_state;
	}
	public void setSee_state(int see_state) {
		this.see_state = see_state;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

}
