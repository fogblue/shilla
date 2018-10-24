package iot5.project.shilla.model;

public class ResvRoom {
	private int id;
	private int roomNo;
	private String checkIn;
	private String checkOut;
	private String roomType;
	private String packageType;
	private int exbed;
	private int meal;
	private int totalPrice;
	private int memberId;
	private String hotelCate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
		return "ResvRoom [id=" + id + ", roomNo=" + roomNo + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", roomType=" + roomType + ", packageType=" + packageType + ", exbed=" + exbed + ", meal=" + meal
				+ ", totalPrice=" + totalPrice + ", memberId=" + memberId + ", hotelCate=" + hotelCate + "]";
	}
	
}