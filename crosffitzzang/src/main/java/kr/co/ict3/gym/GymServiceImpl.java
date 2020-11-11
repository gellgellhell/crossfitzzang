package kr.co.ict3.gym;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GymServiceImpl implements GymService {

	@Autowired
	private GymDAO dao;

	@Override
	public GymDTO neargym(String bno1) {
		
		GymDTO dto = dao.neargym(bno1);
		
		return dto;
	}



	@Override
	public List<GymDTO> recommend_gym(GymDTO inDto) {
		
		List<GymDTO> list = dao.recommend_gym();
		
		return list;
	}



	@Override
	public List<GymDTO> recommend_schedule(GymDTO inDto) {
		
		List<GymDTO> list2 = dao.recommend_schedule();
		
		return list2;
	}



	@Override
	public List<GymDTO> realtime_schedule(GymDTO inDto) {
		
		List<GymDTO> list3 = dao.realtime_schedule(inDto);
		
		return list3;
	}



	@Override
	public List<GymDTO> searchGymPlace(String searchWord) {
		
		List<GymDTO> list4 = dao.searchGymPlace(searchWord);
		
		return list4;
	}



	@Override
	public List<DongCodeDTO> selectGugun(String sideCode) {
		
		List<DongCodeDTO> list = dao.selectGugun(sideCode);
		
		return list;
	}



	@Override
	public List<GymDTO> jpListWithGugun(DongCodeDTO inDto) {
		
		List<GymDTO> list = dao.jpListWithGugun(inDto);
		
		return list;
	}



	@Override
	public List<DongCodeDTO> selectSido() {
		
		List<DongCodeDTO> list = dao.selectSido();
		
		return list;
	}


}
