package com.board.pj.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.board.pj.common.Paging;
import com.board.pj.service.BoardService;
import com.board.pj.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/board")
	public String BoradDetail(@RequestParam(required = false) int cPage,Model model) {
		
		Paging page = boardService.getPage(cPage);
		
		List<BoardVO> list = boardService.boardList(page);
		
		model.addAttribute("pvo", page);
		model.addAttribute("boardList", list);
		
		return "board";
	}
	
	@GetMapping("/boardDetail")
	public String BoardMove(int cPage,int idx,Model model) {
		BoardVO boardOne = boardService.selectOne(idx);
		model.addAttribute("cPage",cPage);
		model.addAttribute("dvo",boardOne);
		
		return "boardDetail";
	}
	
	@ResponseBody
	@GetMapping("/board/{cPage}")
	public ResponseEntity<Map> boardCheck(@PathVariable int cPage){
		
		Paging page = boardService.getPage(cPage);
		List<BoardVO> list = boardService.boardList(page);
		
		Map<String,Object> paging = new HashMap<>();
		paging.put("pvo", page);
		paging.put("boardList",list);
		
		return ResponseEntity.ok().body(paging);
		
	}
}
