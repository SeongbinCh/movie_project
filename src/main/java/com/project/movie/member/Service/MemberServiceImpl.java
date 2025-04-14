package com.project.movie.member.Service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.movie.member.DTO.MemberDTO;
import com.project.movie.member.Mybatis.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
@Autowired MemberMapper mapper;
	
	// 로그인 확인 메서드
	public int login_chk( String id, String pwd ) {
		MemberDTO dto = mapper.login_chk( id );
		if( dto == null ) {
			return 1;
		}
		if( dto.getPwd() == null || !dto.getPwd().equals( pwd ) ) {
			return 2;
		}
		return 0;
	}
	
	// 로그인 정보 저장 메서드
	public void keepLogin( String sessionId, String id ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put( "sessionId", sessionId );
		map.put( "id", id );
		mapper.keepLogin( map );
	}
	
	// 회원가입 처리 메서드
	public int register( MemberDTO dto ) {
		try {
			return mapper.register( dto );
		} catch( Exception e ) {
			e.printStackTrace();
			return 0;
		}
	}
	
	// 회원정보를 가져오는 메서드
	public MemberDTO getMemberInfo( int memberId ) {
		return mapper.getMemberInfo(memberId);
	}
	
	// 회원정보 수정 메서드
	public int updateMemberInfo( MemberDTO dto ) {
		return mapper.updateMemberInfo(dto);
	}
	
	// id로 memberId를 가져오는 메서드
	public Integer getMemberIdById( String id ) {
		return mapper.getMemberIdById(id);
	}
	
	// 카카오 계정 확인
	public MemberDTO findByKakaoId(String kakaoId) {
		return mapper.findByKakaoId(kakaoId);
	}
	
	// 카카오 회원가입
	public void kakaoRegister(MemberDTO dto) {
		mapper.kakaoRegister(dto);
	}
}
