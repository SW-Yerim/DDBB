package com.ddbb.admin.DTO;

import java.sql.Date;

public class CustomerEventDTO {
	
	private int cuseventnum;
	private String cusEventTitle;
	private String cusEventContentsImg;
	private String cusEventThumbnailImg;
	private Date cusEventStartDate;
	private Date cusEventEndDate;
	private Date cusEventDate;
	
	public int getCuseventnum() {
		return cuseventnum;
	}
	public void setCuseventnum(int cuseventnum) {
		this.cuseventnum = cuseventnum;
	}
	public String getCusEventTitle() {
		return cusEventTitle;
	}
	public void setCusEventTitle(String cusEventTitle) {
		this.cusEventTitle = cusEventTitle;
	}
	public String getCusEventContentsImg() {
		return cusEventContentsImg;
	}
	public void setCusEventContentsImg(String cusEventContentsImg) {
		this.cusEventContentsImg = cusEventContentsImg;
	}
	public String getCusEventThumbnailImg() {
		return cusEventThumbnailImg;
	}
	public void setCusEventThumbnailImg(String cusEventThumbnailImg) {
		this.cusEventThumbnailImg = cusEventThumbnailImg;
	}
	public Date getCusEventStartDate() {
		return cusEventStartDate;
	}
	public void setCusEventStartDate(Date cusEventStartDate) {
		this.cusEventStartDate = cusEventStartDate;
	}
	public Date getCusEventEndDate() {
		return cusEventEndDate;
	}
	public void setCusEventEndDate(Date cusEventEndDate) {
		this.cusEventEndDate = cusEventEndDate;
	}
	public Date getCusEventDate() {
		return cusEventDate;
	}
	public void setCusEventDate(Date cusEventDate) {
		this.cusEventDate = cusEventDate;
	}

	
	
	
}
