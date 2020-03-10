package com.sist.dao;

public class MusicVO {

	/*
	 	MNO			NUMBER
		RANK		NUMBER
		TITLE		VARCHAR2(500 BYTE)
		SINGER		VARCHAR2(200 BYTE)
		ALBUM		VARCHAR2(300 BYTE)
		POSTER		VARCHAR2(260 BYTE)
		IDCREMENT	NUMBER
		STATE		VARCHAR2(6 BYTE)
		KEY			VARCHAR2(100 BYTE)
		HIT			NUMBER
	 */
	
	private int mno;
	private int rank;
	private String title;
	private String singer;
	private String album;
	private String poster;
	private int idcrement;
	private String state;
	private String key;
	private int hit;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public int getIdcrement() {
		return idcrement;
	}
	public void setIdcrement(int idcrement) {
		this.idcrement = idcrement;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
}
