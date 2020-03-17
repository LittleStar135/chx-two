package chx.two.vo;

import java.util.Date;

import chx.two.domain.Waipai;

public class WaipaiVo extends Waipai{

	
	private Integer pageNum;
	
	private String bh;
	private String type;
	private String zz;
	private String bz;
	private Date bs1;
	private Date bs2;
	public WaipaiVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getPageNum() {
		return pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	
	public String getBh() {
		return bh;
	}
	public void setBh(String bh) {
		this.bh = bh;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getZz() {
		return zz;
	}
	public void setZz(String zz) {
		this.zz = zz;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	public Date getBs1() {
		return bs1;
	}
	public void setBs1(Date bs1) {
		this.bs1 = bs1;
	}
	public Date getBs2() {
		return bs2;
	}
	public void setBs2(Date bs2) {
		this.bs2 = bs2;
	}
	
	
	
	
	
	
}
