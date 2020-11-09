package kr.co.ict3.gym;

import java.util.List;

public interface GymService {

	public List<GymDTO> recommend_gym(GymDTO inDto);

	public GymDTO neargym(String bno1);

	public List<GymDTO> recommend_schedule(GymDTO inDto);

	public List<GymDTO> realtime_schedule(GymDTO inDto);

	public List<GymDTO> searchGymPlace(String searchWord);

	public List<DongCodeDTO> selectGugun(String sideCode);

	public List<GymDTO> jpListWithGugun(DongCodeDTO inDto);

	public List<DongCodeDTO> selectSido();

}
