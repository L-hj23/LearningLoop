package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("memberVO")
public class MemberVO {
	private String userNo; //회원번호
	private String email;  //회원이메일
//	private String phone;  //회원전화번호
	private String userId; //회원아이디
	private String userPw; //회원비밀번호
	private String userNm; //회원이름
	private String userType; //회원유형(학생=1,강사=2)
	private String profilePhotoPath; //프로필사진
	private Date joinDate; //가입일시

	public MemberVO() {
		
	}

	public MemberVO(String userNo, String email, String phone,  String userId, String userPw, String userNm, String profilePhotoPath, Date joinDate, String userType) {
		this.userNo = userNo;
		this.email = email;
//		this.phone = phone;
		this.userId= userId;
		this.userPw = userPw;
		this.userNm = userNm;
		this.userType = userType;
		this.profilePhotoPath = profilePhotoPath;
		this.joinDate = joinDate;
	}

	
	//getter,setter
	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getEmail() {
	       return email;
	}

	public void setEmail(String email) {
	    this.email = email;
	}

//	public String getPhone() {
//	     return phone;
//	}
//
//	public void setPhone(String phone) {
//	     this.phone = phone;
//	}

	public String getUserId() {
	     return userId;
	}

	public void setUserId(String userId) {
	     this.userId = userId;
	}

    public String getUserPw() {
	     return userPw;
	}

    public void setUserPw(String userPw) {
	     this.userPw = userPw;
	}

	public String getUserNm() {
	      return userNm;
	}

	public void setUserNm(String userNm) {
	      this.userNm = userNm;
	}

	public String getProfilePhotoPath() {
	      return profilePhotoPath;
	}

	public void setProfilePhotoPath(String profilePhotoPath) {
	      this.profilePhotoPath = profilePhotoPath;
	}

	public Date getjoinDate() {
	      return joinDate;
	}

	public void setjoinDate(Date joinDate) {
	      this.joinDate = joinDate;
	}
	
	public String getUserType() {
		return userType;
	}
	
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	


}


