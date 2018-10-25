package iot5.project.shilla.model;

public class ResvGuest {
	private int id;
	private String cardNo;
	private String cardType;
	private int cardYy;
	private int cardMm;
	private int pplAd;
	private int pplCh;
	private int pplBb;
	private String detail;
	private int memberId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public int getCardYy() {
		return cardYy;
	}
	public void setCardYy(int cardYy) {
		this.cardYy = cardYy;
	}
	public int getCardMm() {
		return cardMm;
	}
	public void setCardMm(int cardMm) {
		this.cardMm = cardMm;
	}
	public int getPplAd() {
		return pplAd;
	}
	public void setPplAd(int pplAd) {
		this.pplAd = pplAd;
	}
	public int getPplCh() {
		return pplCh;
	}
	public void setPplCh(int pplCh) {
		this.pplCh = pplCh;
	}
	public int getPplBb() {
		return pplBb;
	}
	public void setPplBb(int pplBb) {
		this.pplBb = pplBb;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "ResvGuest [id=" + id + ", cardNo=" + cardNo + ", cardType=" + cardType + ", cardYy=" + cardYy
				+ ", cardMm=" + cardMm + ", pplAd=" + pplAd + ", pplCh=" + pplCh + ", pplBb=" + pplBb + ", detail="
				+ detail + ", memberId=" + memberId + "]";
	}
		
}
