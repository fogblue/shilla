package iot5.project.shilla.model;

public class Member {
	private int id;
	private String userNameKor;
	private String userNameEng;
	private String userId;
	private String userPw;
	private String birthdate;
	private String email;
	private String tel;
	private String telHome;
	private String zipcode;
	private String loadAddr;
	private String detail;
	private String regDate;
	private String editDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserNameKor() {
		return userNameKor;
	}
	public void setUserNameKor(String userNameKor) {
		this.userNameKor = userNameKor;
	}
	public String getUserNameEng() {
		return userNameEng;
	}
	public void setUserNameEng(String userNameEng) {
		this.userNameEng = userNameEng;
	}
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
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTelHome() {
		return telHome;
	}
	public void setTelHome(String telHome) {
		this.telHome = telHome;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getLoadAddr() {
		return loadAddr;
	}
	public void setLoadAddr(String loadAddr) {
		this.loadAddr = loadAddr;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getEditDate() {
		return editDate;
	}
	public void setEditDate(String editDate) {
		this.editDate = editDate;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", userNameKor=" + userNameKor + ", userNameEng=" + userNameEng + ", userId="
				+ userId + ", userPw=" + userPw + ", birthdate=" + birthdate + ", email=" + email + ", tel=" + tel
				+ ", telHome=" + telHome + ", zipcode=" + zipcode + ", loadAddr=" + loadAddr + ", detail=" + detail
				+ ", regDate=" + regDate + ", editDate=" + editDate + "]";
	}
	
}
