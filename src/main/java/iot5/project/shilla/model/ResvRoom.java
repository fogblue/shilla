package iot5.project.shilla.model;

public class ResvRoom {
	private int id;
	private int roomId;
	private String checkIn;
	private String checkOut;
	private String roomType;
	private String bedType;
	private int exbed;
	private int meal;
	private String resvDate;
	private int memberId;
	private String hotelCate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
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

	@Override
	public String toString() {
		return "ResvRoom [id=" + id + ", roomId=" + roomId + ", checkIn=" + checkIn + ", checkOut=" + checkOut
				+ ", roomType=" + roomType + ", bedType=" + bedType + ", exbed=" + exbed + ", meal=" + meal
				+ ", resvDate=" + resvDate + ", memberId=" + memberId + ", hotelCate="
				+ hotelCate + "]";
	}

}