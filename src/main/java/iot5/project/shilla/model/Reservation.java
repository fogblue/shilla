package iot5.project.shilla.model;

public class Reservation {
	private int id;
	private String hotelCate;
	private String checkIn;
	private String checkOut;
	private int pplAd;
	private int pplCh;
	private int pplBb;
	private String roomType;
	private String packageType;
	private String resvDate;
	private String editDate;
	private int MemberId;
	private int exbed;
	private int meal;
	private String roomQty;
	private String text;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHotelCate() {
		return hotelCate;
	}
	public void setHotelCate(String hotelCate) {
		this.hotelCate = hotelCate;
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
	public String getResvDate() {
		return resvDate;
	}
	public void setResvDate(String resvDate) {
		this.resvDate = resvDate;
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
	public String getRoomQty() {
		return roomQty;
	}
	public void setRoomQty(String roomQty) {
		this.roomQty = roomQty;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	@Override
	public String toString() {
		return "Reservation [id=" + id + ", hotelCate=" + hotelCate + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", pplAd=" + pplAd + ", pplCh=" + pplCh + ", pplBb=" + pplBb + ", roomType=" + roomType
				+ ", packageType=" + packageType + ", resvDate=" + resvDate + ", editDate=" + editDate + ", MemberId="
				+ MemberId + ", exbed=" + exbed + ", meal=" + meal + ", roomQty=" + roomQty + ", text=" + text + "]";
	}
}
