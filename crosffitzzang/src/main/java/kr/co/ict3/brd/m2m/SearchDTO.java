package kr.co.ict3.brd.m2m;

public class SearchDTO {

	private String search_option;
	private String search_word;
	private int search_page_num;

	public String getSearch_option() {
		return search_option;
	}
	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}
	public String getSearch_word() {
		return search_word;
	}
	public void setSearch_word(String search_word) {
		this.search_word = search_word;
	}
	public int getSearch_page_num() {
		return search_page_num;
	}
	public void setSearch_page_num(int search_page_num) {
		this.search_page_num = search_page_num;
	}

}//class
