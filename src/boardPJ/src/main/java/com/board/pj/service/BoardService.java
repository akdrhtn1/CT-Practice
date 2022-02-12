package com.board.pj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.pj.common.Paging;
import com.board.pj.repository.BoardDAOMybatis;
import com.board.pj.vo.BoardVO;

@Service
public class BoardService {
	@Autowired
	BoardDAOMybatis BoardDAO;
	public Paging getPage(int cPage) {
		
		Paging p = new Paging();


		p.setTotalRecord(BoardDAO.getTotalCount()); 
		p.setTotalPage();

		

		p.setNowPage(cPage);
		


		p.setEnd(p.getNowPage() * p.getNumPerPage()); 
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		

		if (p.getEnd() > p.getTotalRecord()) {
			p.setEnd(p.getTotalRecord());
		}
		

		int nowPage = p.getNowPage();
		int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
		p.setBeginPage(beginPage);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);

		

		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		return p;
	}
	
	public List<BoardVO> boardList(Paging p){
		Map<String,Integer> pageMap = new HashMap<>();
		pageMap.put("begin", p.getBegin());
		pageMap.put("end", p.getEnd());
		return BoardDAO.getList(pageMap);
	}
	
	public BoardVO selectOne(int idx) {
		
		return BoardDAO.getOne(idx);
	}
}
