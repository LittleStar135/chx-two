package chx.two.service;

import java.util.List;

import chx.two.domain.Waipai;
import chx.two.vo.WaipaiVo;

public interface WaipaiService {

	
	List<Waipai> selectes(WaipaiVo vo);
	
	int insert(Waipai waipai);
	
}
