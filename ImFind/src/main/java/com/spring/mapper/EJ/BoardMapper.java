package com.spring.mapper.EJ;

import com.spring.imfind.el.EJ.BoardVO;

public interface BoardMapper {
	public int boardInsert(BoardVO vo);
	public void boardList(BoardVO vo);
}