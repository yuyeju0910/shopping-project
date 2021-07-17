package org.kosta.myproject.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kosta.myproject.controller.utils.UpLoadFileUtils;
import org.kosta.myproject.model.MemberVO;
import org.kosta.myproject.model.PostVO;
import org.kosta.myproject.service.BoardService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class BoardController {
	@Resource
	private BoardService boardservice;
	
	@RequestMapping("views/board/boardList")
	public String getPostList(Model model) {
		List<PostVO>postlist =boardservice.getPostList();
		model.addAttribute("postlist", postlist);
		return "board/boardList.tiles";

	}
	
	@RequestMapping("views/board/registerPostForm")
	public String registerPostForm() {
	return "board/registerPostForm.tiles";	
	}
	
	@RequestMapping("views/board/registerPost")
	public String registerPost(PostVO vo,MultipartFile file,HttpServletRequest req) throws IOException, Exception {
		
		MemberVO mvo = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		vo.setMemberVO(mvo);
		System.out.println("boardVO:" + vo + " posting 인증정보 확인:" + mvo);

		String uploadPath = req.getSession().getServletContext().getRealPath("/");
		System.out.println(uploadPath);
		//String uploadPath="C:\\Users\\user\\git\\shopping-project\\SpringBoot-shop-tiles\\src\\main\\resources\\static\\myweb";
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";  // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		 String ymdPath = UpLoadFileUtils.calcPath(imgUploadPath);  // 위의 폴더를 기준으로 연월일 폴더를 생성	
		 String fileName = null;  // 기본 경로와 별개로 작성되는 경로 + 파일이름
		 System.out.println("imgUploadPath:"+imgUploadPath);
		 if(file.getOriginalFilename() != null && !file.getOriginalFilename().equals("")) {
			 System.out.println("파일업로드시작!!");
			  // 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)  
              fileName=UpLoadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
              System.out.println("업로드할파일명"+fileName);
			  // gdsImg에 원본 파일 경로 + 파일명 저장
			  vo.setImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			  // gdsThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장			  
			  System.out.println(vo);			  		  
			  vo.setImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);  
			 } else {  // 첨부된 파일이 없으면
			  fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
			  // 미리 준비된 none.png파일을 대신 출력함
			  System.out.println("업로드파일:"+fileName);
			  vo.setImg(fileName);
			  vo.setImg(fileName);
			 }
			 System.out.println("fileName : "+fileName);
			 System.out.println();
		boardservice.registerPost(vo);
		
		
		
		return "redirect:/views/board/boardList";
	}	
	
	@RequestMapping("board/registergoods-result")
	public String registerend() {
		return "admin/goods/registergoods-ok.tiles";
	}
	
	
	
	@RequestMapping("views/board/getDetailPostByNo")
	public String getDetailPostByNo(String boardNo, Model model) {
		
		model.addAttribute("viewDetailPost", boardservice.getDetailPostByNo(boardNo));
		
		return "board/detailPost.tiles";
		
	}
	
	@RequestMapping("views/board/deleteview")
	public String deletePosting(int n) {
		
	 boardservice.deletePosting(n);
		return "redirect:/views/board/boardList";
	}
	
	
	
	
	




}
