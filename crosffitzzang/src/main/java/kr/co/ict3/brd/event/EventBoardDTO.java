package kr.co.ict3.brd.event;

import org.springframework.web.multipart.MultipartFile;

/*
 * 편의를 위한 구분으로, 반드시 지켜야하는 규칙은 없다.
 * Table DTO : DB Table의 속성들을 변수로 갖는 DTO.
 * View DTO : 화면의 data들을 변수로 갖는 DTO.
 * Composite DTO : 화면 data들+table 속성들+기타 data들을 변수로 갖는 DTO.
 */
public class EventBoardDTO {//alt + shift + a
	private String bno;
	private String title;
	private String writer;
	private String pwd;
	private String cnts;
	private String view_cnt;
	private String like_cnt;
	private String unlike_cnt;
	private String write_date;
	private MultipartFile file_up;
	private String up_file_path;

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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public String getUnlike_cnt() {
		return unlike_cnt;
	}
	public void setUnlike_cnt(String unlike_cnt) {
		this.unlike_cnt = unlike_cnt;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public MultipartFile getFile_up() {
		return file_up;
	}
	public void setFile_up(MultipartFile file_up) {
		this.file_up = file_up;
	}
	public String getUp_file_path() {
		return up_file_path;
	}
	public void setUp_file_path(String up_file_path) {
		this.up_file_path = up_file_path;
	}

}//class
