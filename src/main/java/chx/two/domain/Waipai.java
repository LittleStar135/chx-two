package chx.two.domain;

import java.util.Date;
import java.util.List;

public class Waipai {

	
	private Integer id;
	private Date bsdate;
	private String bh;
	private String zhizaobh;
	private String zhizao;
	private String peijian;
	private String peijianbh;
	private String danjia;
	private String num;
	private double price;
	private String jishu;
	private String sbbh;
	private String sb;
	private Date peisong;
	private Date songhui;
	private double dj;
	private double money;
	private String jg;
	
	
	List<Jiagong> jiagongs;
	
	List<Shebei> shebeis;
	
	public Waipai() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	
	public String getJg() {
		return jg;
	}
	public void setJg(String jg) {
		this.jg = jg;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getBsdate() {
		return bsdate;
	}
	public void setBsdate(Date bsdate) {
		this.bsdate = bsdate;
	}
	public String getBh() {
		return bh;
	}
	public void setBh(String bh) {
		this.bh = bh;
	}
	public String getZhizaobh() {
		return zhizaobh;
	}
	public void setZhizaobh(String zhizaobh) {
		this.zhizaobh = zhizaobh;
	}
	public String getZhizao() {
		return zhizao;
	}
	public void setZhizao(String zhizao) {
		this.zhizao = zhizao;
	}
	public String getPeijian() {
		return peijian;
	}
	public void setPeijian(String peijian) {
		this.peijian = peijian;
	}
	public String getPeijianbh() {
		return peijianbh;
	}
	public void setPeijianbh(String peijianbh) {
		this.peijianbh = peijianbh;
	}
	public String getDanjia() {
		return danjia;
	}
	public void setDanjia(String danjia) {
		this.danjia = danjia;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public List<Jiagong> getJiagongs() {
		return jiagongs;
	}
	public void setJiagongs(List<Jiagong> jiagongs) {
		this.jiagongs = jiagongs;
	}
	public List<Shebei> getShebeis() {
		return shebeis;
	}
	public void setShebeis(List<Shebei> shebeis) {
		this.shebeis = shebeis;
	}
	public String getJishu() {
		return jishu;
	}
	public void setJishu(String jishu) {
		this.jishu = jishu;
	}
	public String getSbbh() {
		return sbbh;
	}
	public void setSbbh(String sbbh) {
		this.sbbh = sbbh;
	}
	public String getSb() {
		return sb;
	}
	public void setSb(String sb) {
		this.sb = sb;
	}
	public Date getPeisong() {
		return peisong;
	}
	public void setPeisong(Date peisong) {
		this.peisong = peisong;
	}
	public Date getSonghui() {
		return songhui;
	}
	public void setSonghui(Date songhui) {
		this.songhui = songhui;
	}
	public double getDj() {
		return dj;
	}
	public void setDj(double dj) {
		this.dj = dj;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}

	
	
	
	
	
}
