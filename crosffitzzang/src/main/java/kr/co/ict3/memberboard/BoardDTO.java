package kr.co.ict3.memberboard;

public class BoardDTO {//alt + shift + a

	private String bno;
	private String title;
	private String mno;
	private String id;
	private String cnts;
	private String view_cnt;
	private String like_cnt;
	private String write_date;

	public String getBno() {//메뉴 source > getters & setters
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCnts() {
		return cnts;
	}
	public void setCnts(String cnts) {
		this.cnts = cnts;
	}
	public String getView_cnt() {
		return view_cnt;
	}
	public void setView_cnt(String view_cnt) {
		this.view_cnt = view_cnt;
	}
	public String getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(String like_cnt) {
		this.like_cnt = like_cnt;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

}
/*
 * 편의를 위한 구분으로, 반드시 지켜야하는 규칙은 없다.
 * Table DTO : DB Table의 속성들을 변수로 갖는 DTO.
 * View DTO : 화면의 data들을 변수로 갖는 DTO.
 * Composite DTO : 화면 data들+table 속성들+기타 data들을 변수로 갖는 DTO.
 */
