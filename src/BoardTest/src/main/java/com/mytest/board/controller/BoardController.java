package com.mytest.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.mytest.board.common.Paging;
import com.mytest.board.service.BoardService;
import com.mytest.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/board.do") //pom.xml에서 스프링 프레임워크 버전 바꿔져야 함
	public String BoradDetail(@RequestParam(required = false) int cPage,Model model) {
		
		Paging page = boardService.getPage(cPage);
		
		List<BoardVO> list = boardService.boardList(page);
		
		model.addAttribute("pvo", page);
		model.addAttribute("boardList", list);
		
		return "board.jsp";
	}
}
