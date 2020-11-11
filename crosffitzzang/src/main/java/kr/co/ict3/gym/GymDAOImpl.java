package kr.co.ict3.gym;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GymDAOImpl implements GymDAO {
	
	@Autowired
	private SqlSession sqlSession;
	


	@Override
	public GymDTO neargym(String bno1) {
		
		GymDTO dto = sqlSession.selectOne("GymBoardMapper.neargym", bno1);
		
		return dto;
	}



	@Override
	public List<GymDTO> recommend_gym() {
		
		List<GymDTO> list4 = sqlSession.selectList("GymBoardMapper.recommend_gym");
		
		return list4;
		
	}



	@Override
	public List<GymDTO> recommend_schedule() {
		
		List<GymDTO> list2 = sqlSession.selectList("GymBoardMapper.recommend_schedule");
		
		return list2;
	}



	@Override
	public List<GymDTO> realtime_schedule(GymDTO inDto) {
		
		List<GymDTO> list3 = sqlSession.selectList("GymBoardMapper.realtime_schedule");
		
		return list3;
	}



	@Override
	public List<GymDTO> searchGymPlace(String searchWord) {
		
		List<GymDTO> list4 = sqlSession.selectList("GymBoardMapper.searchGymPlace", searchWord);
		
		return list4;
	}



	@Override
	public List<DongCodeDTO> selectGugun(String sideCode) {
		
		List<DongCodeDTO> list = sqlSession.selectList("GymBoardMapper.selectGugun", sideCode);
		
		return list;
	}



	@Override
	public List<GymDTO> jpListWithGugun(DongCodeDTO inDto) {
		
		
		List<GymDTO> list = sqlSession.selectList("GymBoardMapper.jpListWithGugun", inDto);
		
		return list;
	}



	@Override
	public List<DongCodeDTO> selectSido() {
		
		List<DongCodeDTO> list = sqlSession.selectList("GymBoardMapper.selectSido");
				
		
		return list;
	}







}
