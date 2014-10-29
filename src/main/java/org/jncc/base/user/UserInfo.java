package org.jncc.base.user;

public class UserInfo {
	private String username;
	private String realname;
	private String password;
	private int sex;
	private String birth;
	private String schoolno;
	private String phoneno;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getPreference() {
		return preference;
	}

	public void setPreference(String preference) {
		this.preference = preference;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	private String email;
	private String qq;
	private String preference;
	private String hobby;


	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return username;
	}
	
	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getRealname() {
		return realname;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}
	
	public void setSex(int sex) {
		this.sex = sex;
	}

	public int getSex() {
		return sex;
	}
	
	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getBirth() {
		return birth;
	}
	
	public void setSchoolno(String schoolno) {
		this.schoolno = schoolno;
	}

	public String getSchoolno() {
		return schoolno;
	}
	
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getPhoneno() {
		return phoneno;
	}
}