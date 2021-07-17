package org.kosta.myproject.service;

import java.util.List;

import org.kosta.myproject.model.PostVO;

public interface BoardService {
	List<PostVO>getPostList();
	void registerPost(PostVO post);
	PostVO getDetailPostByNo(String boardNo);
	void deletePosting(int no);
	
}
