package com.test.domain;

import java.util.Date;

public class BoardVo {
	private int pNo;
	private String pName;
	private String pContent;
	private Date startDate;
	private Date endDate;
	private String pState;

	public int getpNo() {
		return pNo;
	}

	public String getpName() {
		return pName;
	}

	public String getpContent() {
		return pContent;
	}

	public Date getStartDate() {
		return startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public String getpState() {
		return pState;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public void setpState(String pState) {
		this.pState = pState;
	}

	@Override
	public String toString() {
		return String.format("BoardVo [pNo=%s, pName=%s, pContent=%s, startDate=%s, endDate=%s, pState=%s]", pNo, pName,
				pContent, startDate, endDate, pState);
	}

}
