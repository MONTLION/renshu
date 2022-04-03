package kr.narp.myapp.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory; // [ O O O O O ]
	
		// 회원 전체 리스트 보기
		public List<MemberVO> memberList() {
			// Connection + Statement = sqlSession
			SqlSession session = sqlSessionFactory.openSession();
			List<MemberVO> list = session.selectList("memberList");
			session.close(); // 반납
			return list;
		}
		
		// 회원 추가
		public int memberInsert(MemberVO vo) {
			SqlSession session = sqlSessionFactory.openSession();
			int row = session.insert("memberInsert", vo);
			session.commit();
			session.close();
			return row;
		}
		// 회원 삭제
		public int memberDelete(int num) {
			SqlSession session = sqlSessionFactory.openSession();
			int row = session.delete("memberDelete", num);
			session.commit();
			session.close();
			return row;
		}
		// 회원 상세보기
		public MemberVO memberContent(int num) {
			SqlSession session = sqlSessionFactory.openSession();
			MemberVO vo = session.selectOne("memberContent", num);
			session.close();
			return vo;
		}
		// 회원 수정하기
		public int memberUpdate(MemberVO vo) {
			SqlSession session = sqlSessionFactory.openSession();
			int row = session.update("memberUpdate", vo);
			session.commit();
			session.close();
			return row;
		}
		
	
}
	

