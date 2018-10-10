package iot5.project.shilla.model;

public class QnA {
	private int id;
	private String ecategory;
	private String qnaFile;
	private String hotelCate;
	private String qnaType;
	private String subject;
	private String content;
	private String name;
	private String email;
	private String tel;
	private String regDate;
	private String editDate;
	private int MemberId;
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
	public String getQnaFile() {
		return qnaFile;
	}
	public void setQnaFile(String qnaFile) {
		this.qnaFile = qnaFile;
	}
	public String getHotelCate() {
		return hotelCate;
	}
	public void setHotelCate(String hotelCate) {
		this.hotelCate = hotelCate;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getMemberId() {
		return MemberId;
	}
	public void setMemberId(int memberId) {
		MemberId = memberId;
	}
	@Override
	public String toString() {
		return "QnA [id=" + id + ", ecategory=" + ecategory + ", qnaFile=" + qnaFile + ", hotelCate=" + hotelCate
				+ ", qnaType=" + qnaType + ", subject=" + subject + ", content=" + content + ", name=" + name
				+ ", email=" + email + ", tel=" + tel + ", regDate=" + regDate + ", editDate=" + editDate
				+ ", MemberId=" + MemberId + "]";
	}
	
	
}
