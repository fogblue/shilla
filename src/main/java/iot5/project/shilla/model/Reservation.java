package iot5.project.shilla.model;

public class Reservation {
	private int roomId;
	private int roomNo;
	private String checkIn;
	private String checkOut;
	private String roomType;
	private String packageType;
	private String bedType;
	private int exbed;
	private int meal;
	private int totalPrice;
	private String resvDate;
	private int memberId;
	private String hotelCate;
	private int guestId;
	private String cardNo;
	private String cardType;
	private int cardYy;
	private int cardMm;
	private int pplAd;
	private int pplCh;
	private int pplBb;
	private String detail;
	private int resvRoomId;

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getPackageType() {
		return packageType;
	}

	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}

	public String getBedType() {
		return bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

	public int getExbed() {
		return exbed;
	}

	public void setExbed(int exbed) {
		this.exbed = exbed;
	}

	public int getMeal() {
		return meal;
	}

	public void setMeal(int meal) {
		this.meal = meal;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getResvDate() {
		return resvDate;
	}

	public void setResvDate(String resvDate) {
		this.resvDate = resvDate;
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

	public int getGuestId() {
		return guestId;
	}

	public void setGuestId(int guestId) {
		this.guestId = guestId;
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

	public int getResvRoomId() {
		return resvRoomId;
	}

	public void setResvRoomId(int resvRoomId) {
		this.resvRoomId = resvRoomId;
	}

	@Override
	public String toString() {
		return "Reservation [roomId=" + roomId + ", roomNo=" + roomNo + ", checkIn=" + checkIn + ", checkOut="
				+ checkOut + ", roomType=" + roomType + ", packageType=" + packageType + ", bedType=" + bedType
				+ ", exbed=" + exbed + ", meal=" + meal + ", totalPrice=" + totalPrice + ", resvDate=" + resvDate
				+ ", memberId=" + memberId + ", hotelCate=" + hotelCate + ", guestId=" + guestId + ", cardNo=" + cardNo
				+ ", cardType=" + cardType + ", cardYy=" + cardYy + ", cardMm=" + cardMm + ", pplAd=" + pplAd
				+ ", pplCh=" + pplCh + ", pplBb=" + pplBb + ", detail=" + detail + ", resvRoomId=" + resvRoomId + "]";
	}

}