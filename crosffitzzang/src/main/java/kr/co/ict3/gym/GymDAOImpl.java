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
		
		List<GymDTO> list = sqlSession.selectList("GymBoardMapper.recommend_gym");
		
		return list;
		
	}



	@Override
	public List<GymDTO> recommend_schedule() {
		
		List<GymDTO> list2 = sqlSession.selectList("GymBoardMapper.recommend_schedule");
		
		return list2;
	}



	@Override
	public List<GymDTO> realtime_schedule() {
		
		List<GymDTO> list3 = sqlSession.selectList("GymBoardMapper.realtime_schedule");
		
		return list3;
	}







}
