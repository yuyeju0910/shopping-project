package org.kosta.myproject.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.kosta.myproject.controller.utils.UpLoadFileUtils;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.MemberVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;
import org.kosta.myproject.service.AdminService;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Resource
	private AdminService adminService;
	
	/* 
	 * @Secure 어노테이션: 인가 처리하는 어노테이션 - 권한이 부여된 사람들만 서비스를 제공받도록 설정한다 
	 * @Secured("ROLE_ADMIN") -> ROLE_ADMIN 권한이 있는 접속자만 서비스를 받을 수 있다 
										 인가가 되지 않은 경우에는 WebSecurityConfig에서 설정한 대로 
										 accessDeniedPage("/accessDeniedView") 로 이동한다 
	 */
	@Secured("ROLE_ADMIN")
	@RequestMapping("main")
	public String adminMain() {
		// 구현내용 
		return "admin/main.tiles";
	}
	
	@RequestMapping("goods/registerProductForm")
	public String registerForm(Model model) {
		List<Map<String,String>>category =null;// CatagoryVO 형태의 List형 변수 category 선언
		  category=adminService.category();
		 System.out.println("category:"+ category); 
		 model.addAttribute("category", category);
		return "admin/goods/registerProductForm.tiles";
	}
	
	@RequestMapping("goods/registerAjax")
	@ResponseBody
	public List<Map<String,String>> registerAjax(Model model,String categoryCode) {
		List<Map<String,String>>categoryMiddle =adminService.categoryMiddle(categoryCode); 
		 //model.addAttribute("middleCategory", categoryMiddle); 페이지가아니라 필요한데이터응답만 받아서
		//return "admin/goods/registerProductForm.tiles";
		System.out.println(categoryMiddle);
		return categoryMiddle;
	}
	
	@PostMapping("goods/registergoods")	
	public String registergoods(GoodsVO vo,MultipartFile file,HttpServletRequest req) throws IOException, Exception {
		System.out.println("registergoods 시작");
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
			  vo.setGdsImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			  // gdsThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장			  
			  System.out.println(vo);			  		  
			  vo.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);  
			 } else {  // 첨부된 파일이 없으면
			  fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
			  // 미리 준비된 none.png파일을 대신 출력함
			  System.out.println("업로드파일:"+fileName);
			  vo.setGdsImg(fileName);
			  vo.setGdsThumbImg(fileName);
			 }
			 System.out.println("fileName : "+fileName);
			 System.out.println();
		adminService.registergoods(vo);
		System.out.println("registergoods 완료");
		return "redirect:/admin/goods/registergoods-result";	
	}
	
	@RequestMapping("goods/registergoods-result")
	public String registerend() {
		return "admin/goods/registergoods-ok.tiles";
	}
	
	@RequestMapping("goods/productList")
	public String productList(Model model) {
		List<GoodsVO>productlist =adminService.productList();
		model.addAttribute("productList", productlist);
		return "admin/goods/productList.tiles";
	}
	@RequestMapping("goods/memberList")
	public String memberList(Model model) {
	List<MemberVO>memberList =adminService.memberList();
	model.addAttribute("mlist", memberList);
	return "admin/goods/memberList.tiles";
	
}
	
	@RequestMapping("goods/view")
	public String view(@RequestParam("n") int gNum,Model model) {
		GoodsVO  goods = 
		adminService.view(gNum);
		 model.addAttribute("goods", goods);
		System.out.println(goods);
		return "admin/goods/view.tiles";
	}
	
	
	

	@RequestMapping("goods/productUpdate")//form
	public String productUpdate(@RequestParam("n") int gNum,Model model) {
//		List<Map<String,String>>category =null;// CatagoryVO 형태의 List형 변수 category 선언*/
		GoodsVO vo=adminService.view(gNum);		  
//	category=adminService.showcategory(vo.getMiddlecateCode());
//		String middleCateCategoryName=null;
//		for(int i=0;i<category.size();i++) {
//			Map<String,String> map=category.get(i);
//			if(map.get("MIDDLECATECODE").equals(vo.getMiddlecateCode())) {
//				middleCateCategoryName=map.get("MIDDLECATENAME");
//				break;
//			}
//		}
//		model.addAttribute("middleCateCategoryName",middleCateCategoryName);
		model.addAttribute("goods",vo );
//	model.addAttribute("category", category);
		return "admin/goods/productUpdate.tiles";
	}
	

	
	@RequestMapping("goods/productUpdateSuccess")//수정
	public String productUpdateSuccess(GoodsVO vo, MultipartFile file, HttpServletRequest req,Model model) throws IOException, Exception {
		String uploadPath = req.getSession().getServletContext().getRealPath("/");
		System.out.println("productUpdate"+vo);

	
			//기존에 있던거 삭제
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			 new File(uploadPath + req.getParameter("gdsImg")).delete();
			new File(uploadPath + req.getParameter("gdsThumbImg")).delete();
			 
			String imgUploadPath = uploadPath + File.separator + "imgUpload"; 
			 String ymdPath = UpLoadFileUtils.calcPath(imgUploadPath);  
			String fileName=UpLoadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			   
	
			  vo.setGdsImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);		  		  
			  vo.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);  
			 } else {  
			
			  vo.setGdsImg(req.getParameter("gdsImg"));
			  vo.setGdsThumbImg(req.getParameter("gdsThumbImg"));
			 }		
		adminService.productUpdate(vo);
	   
		return "redirect:/admin/goods/productList"; //타일즈를 붙이면안댄다
	}
	
	
	@RequestMapping("goods/deleteview")
	public String deletePost(int n) {
		adminService.deletePost(n);
		return "redirect:/admin/goods/productList";
	}
	
	

	
}
