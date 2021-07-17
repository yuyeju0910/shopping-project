package org.kosta.myproject.model.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.myproject.model.PostVO;

@Mapper
public interface BoardMapper {

	List<PostVO>getPostList();
	void registerPost(PostVO post);
	PostVO getDetailPostByNo(String boardNo);
	void deletePosting(int n);
}
