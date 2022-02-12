package com.board.pj.vo;



public class BoardVO {
	private int idx; 
	private String aId; 
	private String title; 
	private String content; 
	private String bDate;
	private String file_name; 
	private String ori_name; 
	private int hit; 
	
	
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
