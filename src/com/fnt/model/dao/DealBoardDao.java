package com.fnt.model.dao;

import java.util.List;

import com.fnt.model.dto.DealBoardDto;
import com.fnt.util.Paging;

public interface DealBoardDao {
	public List<DealBoardDto> selectSaleList(Paging paging);
	public int getAllCountS();
	
	public List<DealBoardDto> selectBuylist(Paging paging);
	public int getAllCount();
	
	public int insertBuyBoard(DealBoardDto dto);
	
	public int insertSaleBoard(DealBoardDto dto);
	
	public DealBoardDto selectDetail(int dboardno);
	
	public int deleteDealBoard(int dboardno);
	
	public int updateDealBoard(DealBoardDto dto);
	
	//통합검색 리스트로 출력
	public List<DealBoardDto> searchList(String searchdeal);
	public List<DealBoardDto> ascorder(String searchdeal);
	public List<DealBoardDto> desccate(String searchdeal, String categorylist);
	public List<DealBoardDto> asccate(String searchdeal, String categorylist);
	
}
