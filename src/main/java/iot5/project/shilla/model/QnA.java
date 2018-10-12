package iot5.project.shilla.model;

public class QnA {
	private int id;
	private String ecategory;
	private String hotelCate;
	private String enqType;
	private String reservNo;
	private String weddingDate;
	private String qnaType;
	private String subject;
	private String content;
	private String userNameKor;
	private String email;
	private String tel;
	private String telHome;
	private String regDate;
	private String editDate;
	private String ipAddress;
	private int memberId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEcategory() {
		return ecategory;
	}

	public void setEcategory(String ecategory) {
		this.ecategory = ecategory;
	}

	public String getHotelCate() {
		return hotelCate;
	}

	public void setHotelCate(String hotelCate) {
		this.hotelCate = hotelCate;
	}

	public String getEnqType() {
		return enqType;
	}

	public void setEnqType(String enqType) {
		this.enqType = enqType;
	}

	public String getReservNo() {
		return reservNo;
	}

	public void setReservNo(String reservNo) {
		this.reservNo = reservNo;
	}

	public String getWeddingDate() {
		return weddingDate;
	}

	public void setWeddingDate(String weddingDate) {
		this.weddingDate = weddingDate;
	}

	public String getQnaType() {
		return qnaType;
	}

	public void setQnaType(String qnaType) {
		this.qnaType = qnaType;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserNameKor() {
		return userNameKor;
	}

	public void setUserNameKor(String userNameKor) {
		this.userNameKor = userNameKor;
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

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "QnA [id=" + id + ", ecategory=" + ecategory + ", hotelCate=" + hotelCate + ", enqType=" + enqType
				+ ", reservNo=" + reservNo + ", weddingDate=" + weddingDate + ", qnaType=" + qnaType + ", subject="
				+ subject + ", content=" + content + ", userNameKor=" + userNameKor + ", email=" + email + ", tel="
				+ tel + ", telHome=" + telHome + ", regDate=" + regDate + ", editDate=" + editDate + ", ipAddress="
				+ ipAddress + ", memberId=" + memberId + ", getId()=" + getId() + ", getEcategory()=" + getEcategory()
				+ ", getHotelCate()=" + getHotelCate() + ", getEnqType()=" + getEnqType() + ", getReservNo()="
				+ getReservNo() + ", getWeddingDate()=" + getWeddingDate() + ", getQnaType()=" + getQnaType()
				+ ", getSubject()=" + getSubject() + ", getContent()=" + getContent() + ", getUserNameKor()="
				+ getUserNameKor() + ", getEmail()=" + getEmail() + ", getTel()=" + getTel() + ", getTelHome()="
				+ getTelHome() + ", getRegDate()=" + getRegDate() + ", getEditDate()=" + getEditDate()
				+ ", getIpAddress()=" + getIpAddress() + ", getMemberId()=" + getMemberId() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}
