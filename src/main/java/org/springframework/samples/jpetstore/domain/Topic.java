package org.springframework.samples.jpetstore.domain;

import java.io.Serializable;


public class Topic implements Serializable {

	private static final long serialVersionUID = 1L;

	/* Private Fields */
	private int id;
	private String author;
	private String native_id;
	private String title;
	private String contents;
	private String url;
	private String channel;
	private int views;
	private String group_id;
	private String status_id;

	/* JavaBeans Properties */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getNative_id() {
		return native_id;
	}
	public void setNative_id(String native_id) {
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
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getGroup_id() {
		return group_id;
	}
	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}
	public String getStatus_id() {
		return status_id;
	}
	public void setStatus_id(String status_id) {
		this.status_id = status_id;
	}


	/* Public Methods*/
	
	public String toString() {
		return getTitle();
	}

}
