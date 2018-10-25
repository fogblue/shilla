package iot5.project.shilla.model;

public class QnA {
	private int id;
	private String ecategory;
	private String enqType;
	private String reservNo;
	private String weddingDate;
	private String qnaType;
	private String qnaFile;
	private String subject;
	private String content;
	private String regDate;
	private String editDate;
	private String ipAddress;
	private int memberId;
	private String hotelCate;
	
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
	public String getQnaFile() {
		return qnaFile;
	}
	public void setQnaFile(String qnaFile) {
		this.qnaFile = qnaFile;
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
	public String getHotelCate() {
		return hotelCate;
	}
	public void setHotelCate(String hotelCate) {
		this.hotelCate = hotelCate;
	}
	
	@Override
	public String toString() {
		return "QnA [id=" + id + ", ecategory=" + ecategory + ", enqType=" + enqType + ", reservNo=" + reservNo
				+ ", weddingDate=" + weddingDate + ", qnaType=" + qnaType + ", qnaFile=" + qnaFile + ", subject="
				+ subject + ", content=" + content + ", regDate=" + regDate + ", editDate=" + editDate + ", ipAddress="
				+ ipAddress + ", memberId=" + memberId + ", hotelCate=" + hotelCate + "]";
	}
}
