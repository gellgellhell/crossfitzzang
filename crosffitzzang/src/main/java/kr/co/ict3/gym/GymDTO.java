package kr.co.ict3.gym;

public class GymDTO {
	
	private String bno;
	private String title;
	private String price;
	private String sell_count;
	private String location;
	private String tell3;
	private String address3;
	private String content;
	private String file3;
	
	
	
	
	public String getTell3() {
		return tell3;
	}
	public void setTell3(String tell3) {
		this.tell3 = tell3;
	}
	public String getAddress3() {
		return address3;
	}
	public void setAddress3(String address3) {
		this.address3 = address3;
	}
	public String getBno() {
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSell_count() {
		return sell_count;
	}
	public void setSell_count(String sell_count) {
		this.sell_count = sell_count;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile3() {
		return file3;
	}
	public void setFile3(String file3) {
		this.file3 = file3;
	}
	
	
	
}


/*
 create table best_board (
	bno int primary key auto_increment
    , title varchar(30)
    , price int(10)
    , sell_count int(5)
    , location varchar(20)
    , tell3 int(15)
    , address3 varchar(50)
	, content varchar(500)
	, file3 varchar(3000)
);

 
 insert into best_board values
 
 (3, '크로스핏 뉴젠', 2000, 5, '서울시', 02-2222-3333, '서울시 마포구 와우산로18길 12 지하1층', '평일 8시~23시', '')
 ,(4, '크로스핏 헬퍼', 2000, 5, '서울시', 070-7543-1584, '서울시 마포구 성산동 지하1층', '평일 7시~23시', '')
 ,(5, '아카 크로스핏', 20000, 7, '서울시', 0507-1405-5598, '서울시 강서구 강서로 392-11 진성프라자', '발산역 3번출구', '')
 ,(6, '크로스핏 라임라잇', 25000, 10, '서울시', 02-3443-7272, '서울시 강남구 언주로169길 15', '발렛파킹 가능', '')
 ,(7, '크로스핏 무도', 15000, 5, '경기도', 0507-1412-5925, '경기도 고양시 일산동구 강석로113', '마두역 7번출구', '')
 ,(8, '크로스핏 라이언짐', 10000, 4, '부산시', 070-7787-9694, '부산 부산진구 중앙대로691번길 54', '주차가능', '')
 ,(9, '리복크로스핏 세찬', 5000, 10, '부산시', 0507-1327-3081, '부산 중구 구덕로 90 지하2층, '주차쌉가능', '')
 ,(10, '크로스핏 가온', 15000, 10, '대구시', 053-628-4622, '대구 남구 명덕로 102, '지하1층', '')
 ,(11, '짐피닉스', 20000, 10, '서울시', 0507-1360-0711, '서울시 종로구 통일로 158 3층, '역근처', '');
 

*/
