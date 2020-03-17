package chx.two.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import chx.two.dao.WaipaiMapper;
import chx.two.domain.Waipai;
import chx.two.service.WaipaiService;
import chx.two.vo.WaipaiVo;

@Service
public class WaipaiServiceImpl implements WaipaiService{

	@Resource
	
	private WaipaiMapper waipaiMapper;

	@Override
	public List<Waipai> selectes(WaipaiVo vo) {
		
		return waipaiMapper.selectes(vo);
	}

	@Override
	public int insert(Waipai waipai) {
		// TODO Auto-generated method stub
		return waipaiMapper.insert(waipai);
	}
	
	
	
	
	
}
