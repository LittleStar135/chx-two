package chx.two.dao;

import java.util.List;

import chx.two.domain.Waipai;
import chx.two.vo.WaipaiVo;

public interface WaipaiMapper {

	
	List<Waipai> selectes(WaipaiVo vo);
	
	int insert(Waipai waipai);
	
	
}
