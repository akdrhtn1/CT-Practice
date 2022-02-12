package com.board.pj.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.pj.vo.BoardVO;

@Repository
public class BoardDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int getTotalCount() {
		return mybatis.selectOne("boardDAO.totalCount");
	}
	
	public List<BoardVO> getList(Map<String,Integer> pageMap) {
		return mybatis.selectList("boardDAO.getList",pageMap);
	}

	public BoardVO getOne(int idx) {
		
		return mybatis.selectOne("boardDAO.selectOne",idx);
	}
}
