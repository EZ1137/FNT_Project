package com.fnt.model.dto;

import java.sql.Date;

public class DealBoardDto {
	private int dboardno;
	private String did;
	private String dnickname;
	private String dtitle;
	private String dfilename;
	private String dcontent;
	private int dprice;
	private Date dregdate;
	private String dcategory;
	private String dflag;
	
	
	public DealBoardDto() {
		
	}
	
	public DealBoardDto(int dboardno, String did, String dnickname, String dtitle, String dfilename, String dcontent,
			int dprice, Date dregdate, String dcategory, String dflag) {
		super();
		this.dboardno = dboardno;
		this.did = did;
		this.dnickname = dnickname;
		this.dtitle = dtitle;
		this.dfilename = dfilename;
		this.dcontent = dcontent;
		this.dprice = dprice;
		this.dregdate = dregdate;
		this.dcategory = dcategory;
		this.dflag = dflag;
	}

	public int getDboardno() {
		return dboardno;
	}

	public void setDboardno(int dboardno) {
		this.dboardno = dboardno;
	}

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String getDnickname() {
		return dnickname;
	}

	public void setDnickname(String dnickname) {
		this.dnickname = dnickname;
	}

	public String getDtitle() {
		return dtitle;
	}

	public void setDtitle(String dtitle) {
		this.dtitle = dtitle;
	}

	public String getDfilename() {
		return dfilename;
	}

	public void setDfilename(String dfilename) {
		this.dfilename = dfilename;
	}

	public String getDcontent() {
		return dcontent;
	}

	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}

	public int getDprice() {
		return dprice;
	}

	public void setDprice(int dprice) {
		this.dprice = dprice;
	}

	public Date getDregdate() {
		return dregdate;
	}

	public void setDregdate(Date dregdate) {
		this.dregdate = dregdate;
	}

	public String getDcategory() {
		return dcategory;
	}

	public void setDcategory(String dcategory) {
		this.dcategory = dcategory;
	}

	public String getDflag() {
		return dflag;
	}

	public void setDflag(String dflag) {
		this.dflag = dflag;
	}
	
	
}

