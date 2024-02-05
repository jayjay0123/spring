package com.my.zegna.controller;
import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.my.zegna.BoardVO;
import com.my.zegna.Page;
import com.my.zegna.persistence.BoardService;
import com.my.zegna.utils.UploadFileUtils;

@Controller
@RequestMapping("/board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	BoardService service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	
	@GetMapping("/write")
	public void write() throws Exception {
		logger.info("get board write");

	}
	
	@PostMapping("/write")
	public String Write(BoardVO vo, HttpServletRequest req, MultipartFile file) throws Exception{
		logger.info("post write");
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		   fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);   
		} else {
		   fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		vo.setImgFile(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		vo.setThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
		service.write(vo);
				
		
		return "redirect:/board/photo?num=1";
	}
	
	
	/*list��������
	@GetMapping("/photo")
	public void List(Model model) throws Exception{
		logger.info("get photo list");
		
		List<BoardVO> list = service.list();
		model.addAttribute("list", list);
	}*/
		
	
	
	@GetMapping("/read") 	
	public void getRead(@RequestParam("seq") int seq, Model model) throws Exception{		
		logger.info("get read");
		
		//service.hitUpdate(seq);
		BoardVO vo = service.read(seq);		

		model.addAttribute("read", vo);
	}
	
	@GetMapping("/modify")
	public void modify(@RequestParam("seq") int seq, Model model) throws Exception{
		logger.info("get modify");
		
		BoardVO vo = service.read(seq);
		model.addAttribute("modify", vo);		
	}
	
	//����
	@PostMapping("/modify")
	public String postModify(BoardVO vo, MultipartFile file, HttpServletRequest req) throws Exception{
		logger.info("post modify");
		
		// ���ο� ������ ��ϵǾ����� Ȯ��
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() !=("")) {
		  // ���� ������ ����
		  new File(uploadPath + req.getParameter("imgFile")).delete();
		  new File(uploadPath + req.getParameter("thumbImg")).delete();
		  
		  // ���� ÷���� ������ ���
		  String imgUploadPath = uploadPath + File.separator + "imgUpload";
		  String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		  String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		  
		  vo.setImgFile(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  vo.setThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // ���ο� ������ ��ϵ��� �ʾҴٸ�
		  // ���� �̹����� �״�� ���
		  vo.setImgFile(req.getParameter("imgFile"));
		  vo.setThumbImg(req.getParameter("thumbImg"));
		  
		 }		
		
		service.update(vo);
				
		return "redirect:/board/photo?num=1"; 
	}
	
	@GetMapping("/delete")
	public void delete(@RequestParam("seq") int seq, Model model) throws Exception{
		logger.info("get delete");
		model.addAttribute("delete", seq);		
	}
	
	@PostMapping("/delete")
	public String postDelete(@RequestParam("seq") int seq) throws Exception{
		logger.info("post delete");
		service.delete(seq);
		return "redirect:/board/photo?num=1";
	}
	
	//list + ����¡ �߰�
	@GetMapping("/photo") 
	public void getListPage(Model model, @RequestParam("num") int num) throws Exception{ //�Ű�����num�� ������ ��ȣ
		logger.info("get photo list");
		
		Page page = new Page();
		
		page.setNum(num);
		page.setCount(service.count());
		
		 List<BoardVO> list = null; 
		 list = service.listPage(page.getDisplayPost(), page.getPostNum());
		
		 model.addAttribute("list", list);
		 //�˻�
				 
		 model.addAttribute("page", page);
		// ���� ������
		 model.addAttribute("select", num); 
	}
		
	
	
}
