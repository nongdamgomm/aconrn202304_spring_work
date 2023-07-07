package com.han.spring05.review.dao;

import java.util.List;

import com.han.spring05.review.dto.ReviewDto;

public interface ReviewDao {
	public List<ReviewDto> getList(ReviewDto dto);
	public void insert (ReviewDto dto);
	public int getCount(ReviewDto dto);
	public ReviewDto getData(int num);
	public ReviewDto getData(ReviewDto dto);
	public void delete(int num);
	public void update(ReviewDto dto);
	public void addViewCount(int num);
	
}
