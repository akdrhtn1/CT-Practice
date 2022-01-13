package com.mytest.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mytest.board.common.Paging;
import com.mytest.board.repository.BoardDAOMybatis;
import com.mytest.board.vo.BoardVO;

@Service
public class BoardService {
	@Autowired
	BoardDAOMybatis BoardDAO;
	public Paging getPage(int cPage) {
		
		Paging p = new Paging();

		//1. 전체 게시물의 수량 구하기	
		p.setTotalRecord(BoardDAO.getTotalCount()); 
		p.setTotalPage();

		
		//2. 현재 페이지 구하기+
		p.setNowPage(cPage);
		

		//3. 현재 페이지에 표시할 게시글 시작번호(begin), 끝번호(end) 구하기
		p.setEnd(p.getNowPage() * p.getNumPerPage()); //현재페이지번호 * 페이지당게시글 수
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		
		//(선택적) 3-1. 끝 번호가 데이터 건수보다 많아지면 데이터 건수와 동일한 번호로 설정
		if (p.getEnd() > p.getTotalRecord()) {
			p.setEnd(p.getTotalRecord());
		}
		
		//---- 블록(block) 계산하기 ----------------
		//4. 블록의 시작페이지, 끝페이지 구하기(현재페이지 번호 사용)
		//시작페이지 구하기
		int nowPage = p.getNowPage();
		int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
		p.setBeginPage(beginPage);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);

		
		//4-1. 끝페이지(endPage)가 전체페이지 수(totalPage) 보다 크면
		// 끝페이지를 전체페이지 수로 변경 처리
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
}
