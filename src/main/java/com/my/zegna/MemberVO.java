package com.my.zegna;

import java.io.UnsupportedEncodingException;
import java.util.Date;

public class MemberVO {
	
	private String userId;
	private String userPass;
	private String userPassRe;
	private String userName;
	private String userGender;
	private String userEmail;
	private String userPhone;
	private String userAddr1;
	private String userAddr2;
	private String userAddr3;
	private Date regDate;
	private int verify;
	
	private boolean customCheck;
	private String qustr;
	private String userId_yn;
	
	public boolean inCustomCheck() {
		return customCheck;
	}
	
	public void setCustomCheck(boolean customCheck) {
        this.customCheck = customCheck;
    }
    
    public void setQustr() throws UnsupportedEncodingException {
        
        String qs = "";
        this.setQustr();
        qs += this.getQustr();
        this.qustr = qs;
    }
 
	public String getQustr() {
    	return qustr;
    }
	
	public String getUserId_yn() {
		return userId_yn;
	}

	public void setUserId_yn(String userId_yn) {
		this.userId_yn = userId_yn;
	}

	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserPassRe() {
		return userPassRe;
	}
	public void setUserPassRe(String userPassRe) {
		this.userPassRe = userPassRe;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
		
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	
		
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddr1() {
		return userAddr1;
	}
	public void setUserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}
	public String getUserAddr2() {
		return userAddr2;
	}
	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	public String getUserAddr3() {
		return userAddr3;
	}
	public void setUserAddr3(String userAddr3) {
		this.userAddr3 = userAddr3;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}
	
	
	

}
