package com.mytest.board.vo;



public class BoardVO {
	private int idx; //번호
	private String aId; // 관리자아이디
	private String title; // 제목
	private String content; // 내용
	private String bDate; //작성일
	private String file_name; // 실제파일명
	private String ori_name; //원본파일명
	private int hit; // 조회수
	
	
	public BoardVO() {}
	
	
	public BoardVO(int idx, String aId, String title, String content, String bDate, String file_name, String ori_name,
			int hit) {
		super();
		this.idx = idx;
		this.aId = aId;
		this.title = title;
		this.content = content;
		this.bDate = bDate;
		this.file_name = file_name;
		this.ori_name = ori_name;
		this.hit = hit;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getaId() {
		return aId;
	}
	public void setaId(String aId) {
		this.aId = aId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getbDate() {
		return bDate;
	}
	public void setbDate(String bDate) {
		this.bDate = bDate;
	}
	
	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getOri_name() {
		return ori_name;
	}

	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}


	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}


	@Override
	public String toString() {
		return "BoardVO [idx=" + idx + ", aId=" + aId + ", title=" + title + ", content=" + content + ", bDate=" + bDate
				+ ", file_name=" + file_name + ", ori_name=" + ori_name + ", hit=" + hit + "]";
	}
	
	
	
}
