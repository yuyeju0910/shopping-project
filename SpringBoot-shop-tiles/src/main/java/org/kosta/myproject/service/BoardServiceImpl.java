package org.kosta.myproject.service;

import java.util.List;
import javax.annotation.Resource;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.OrderDetailVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;
import org.kosta.myproject.model.PostVO;
import org.kosta.myproject.model.ReplyListVO;
import org.kosta.myproject.model.ReplyVO;
import org.kosta.myproject.model.mapper.BoardMapper;
import org.kosta.myproject.model.mapper.ShopMapper;
import org.springframework.stereotype.Service;


@Service
public class BoardServiceImpl implements BoardService{
	@Resource
	private BoardMapper boardmapper;

	@Override
	public List<PostVO> getPostList() {
		
		return boardmapper.getPostList();
	}


	@Override
	public void registerPost(PostVO post) {
		boardmapper.registerPost(post);
	}


	@Override
	public PostVO getDetailPostByNo(String boardNo) {
		return  boardmapper.getDetailPostByNo(boardNo);
	}


	@Override
	public void deletePosting(int n) {
		boardmapper.deletePosting(n);
	}




	

}




	


	


