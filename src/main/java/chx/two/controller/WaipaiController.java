package chx.two.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import chx.two.domain.Waipai;
import chx.two.service.WaipaiService;
import chx.two.vo.WaipaiVo;

@Controller
public class WaipaiController {

	
	@Resource
	private WaipaiService waipaiService;
	
	@RequestMapping("list")
	public String selectes(Model model,Integer pageNum,WaipaiVo vo) {
		if (vo.getPageNum()==null || "".equals(vo.getPageNum())) {
			vo.setPageNum(1);
		}
		
		PageHelper.startPage(vo.getPageNum(),3);
		List<Waipai> list = waipaiService.selectes(vo);
		PageInfo<Waipai> page = new PageInfo<Waipai>(list);
		
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		
		return "list";
		
	}
	
	@ResponseBody
	@RequestMapping("add")
	public int  add(Waipai waipai) {
		
		return waipaiService.insert(waipai);
		
	}
	
}
