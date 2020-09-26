package com.newjavaweb;
public class User {
	private int id;
	private String name;
	private String shenfen;
	private String jiguan;
	private String dianhua;
	private String chusheng;
	private String zhuanye;
	private String beizhu;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShenfen() {
		return shenfen;
	}
	public void setShenfen(String shenfen) {
		this.shenfen = shenfen;
	}
	public String getJiguan() {
		return jiguan;
	}
	public void setJiguan(String jiguan) {
		this.jiguan = jiguan;
	}
	public String getDianhua() {
		return dianhua;
	}
	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	public String getChusheng() {
		return chusheng;
	}
	public void setChusheng(String chusheng) {
		this.chusheng = chusheng;
	}
	public String getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public User(String name, String shenfen, String jiguan, String dianhua, String chusheng, String zhuanye,
			String beizhu) {
		super();
		this.name = name;
		this.shenfen = shenfen;
		this.jiguan = jiguan;
		this.dianhua = dianhua;
		this.chusheng = chusheng;
		this.zhuanye = zhuanye;
		this.beizhu = beizhu;
	}
	public User(int id, String name, String shenfen, String jiguan, String dianhua, String chusheng, String zhuanye,
			String beizhu) {
		super();
		this.id = id;
		this.name = name;
		this.shenfen = shenfen;
		this.jiguan = jiguan;
		this.dianhua = dianhua;
		this.chusheng = chusheng;
		this.zhuanye = zhuanye;
		this.beizhu = beizhu;
	}
	public User() {}
}
