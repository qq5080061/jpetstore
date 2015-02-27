package org.springframework.samples.jpetstore.domain;

import java.io.Serializable;


public class NativeTopic implements Serializable {

	private static final long serialVersionUID = 1L;

	/* Private Fields */
	private int native_id;
	private String title;
	private String contents;
	private String url;
	private String author;
	private String language;
	private int needs;
	private String channel;
	private int referee;
	private String group_id;

	/* JavaBeans Properties */
	public int getNative_id() {
		return native_id;
	}

	public void setNative_id(int native_id) {
		this.native_id = native_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public int getNeeds() {
		return needs;
	}

	public void setNeeds(int needs) {
		this.needs = needs;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public int getReferee() {
		return referee;
	}

	public void setReferee(int referee) {
		this.referee = referee;
	}

	public String getGroup_id() {
		return group_id;
	}

	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}	


	/* Public Methods*/
	
	public String toString() {
		return getTitle();
	}



}
