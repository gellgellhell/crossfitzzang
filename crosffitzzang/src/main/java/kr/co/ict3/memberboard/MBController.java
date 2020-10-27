package kr.co.ict3.memberboard;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.ict3.util.SessionCheck;

@Controller
public class MBController {

	@Autowired
	private MBService service;

	@RequestMapping(value="/mblike", method=RequestMethod.GET)
	public String updateLikeCnt(String bno) {
		service.updateLikeCnt(bno);
		return "redirect:/mbdetail?bno="+bno;
	}//updateLikeCnt

	@RequestMapping(value="/mbupdate", method=RequestMethod.POST)
	public String update(HttpSession session, Model model
						, BoardDTO inDto) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}
		int successCnt = service.update(inDto);
		if(successCnt > 0) {
			return "redirect:/mblist";
		} else {
			model.addAttribute("fail_loc", "회원 게시판 수정");
			model.addAttribute("fail_msg", "다시 시도해 주세요.");
			return "member_board/wfail";
		}
	}//update

	@RequestMapping(value="/mbuform", method=RequestMethod.GET)
	public String updateForm(HttpSession session, Model model
							, String bno) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}
		BoardDTO dto = service.detail(bno);
		model.addAttribute("board_dto", dto);
		return "member_board/uform";
	}//updateForm

	@RequestMapping(value="/mbdelete", method=RequestMethod.GET)
	public String delete(HttpSession session, Model model
						, String bno) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}

		String loginId = SessionCheck.getLoginId(session);

		int successCnt = service.delete(bno, loginId);

		//successCnt = 0;//wfail test...
		if(successCnt > 0) {
			return "redirect:/mblist";
		} else {
			model.addAttribute("fail_msg", "다시 시도해 주세요.");
			if(successCnt == -1) {
				model.addAttribute("fail_msg", "권한이 없습니다.");
			}
			model.addAttribute("fail_loc", "회원 게시판 삭제");
			return "member_board/wfail";
		}
	}//delete

	@RequestMapping(value="/mbdetail", method=RequestMethod.GET)
	public String detail(HttpSession session, Model model
						, String bno) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}
		BoardDTO dto = service.detail(bno);
		model.addAttribute("board_dto", dto);
		return "member_board/detail";
	}//detail

	@RequestMapping(value="/mbwrite", method=RequestMethod.POST)
	public String write(HttpSession session, Model model
						, BoardDTO inDto) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}
		int successCnt = service.write(inDto);
		if(successCnt > 0) {
			return "redirect:/mblist";
		} else {
			model.addAttribute("fail_msg", "다시 시도해 주세요.");
			model.addAttribute("fail_loc", "회원 게시판 쓰기");
			return "member_board/wfail";
		}
	}//write

	@RequestMapping(value="/mbwform", method=RequestMethod.GET)
	public String writeForm(HttpSession session) {
		if(SessionCheck.isLogin(session) == false) {
			return "redirect:/";
		}

		return "member_board/wform";
	}//writeForm

	@RequestMapping(value="/mblist", method=RequestMethod.GET)
	public String list(Model model) {

		List<BoardDTO> list = service.list();//서비스에 일 시키고 결과 받기.

		model.addAttribute("board_list", list);//화면에 전달.

		return "member_board/list";//화면 이름 호출.

	}//list

}//class
