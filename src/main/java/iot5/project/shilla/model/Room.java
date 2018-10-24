package iot5.project.shilla.model;

public class Room {
	private int id;
	private String roomType;
	private String bedType;
	private int roomPrice;
	private int exbed;
	private int meal;
	private String roomImg;
	private int resvId;
	private int packageId;
	private String hotelCate;
	private int roomNo;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
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
	public String getRoomImg() {
		return roomImg;
	}
	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}
	public int getResvId() {
		return resvId;
	}
	public void setResvId(int resvId) {
		this.resvId = resvId;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getHotelCate() {
		return hotelCate;
	}
	public void setHotelCate(String hotelCate) {
		this.hotelCate = hotelCate;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	@Override
	public String toString() {
		return "Room [id=" + id + ", roomType=" + roomType + ", bedType=" + bedType + ", roomPrice=" + roomPrice
				+ ", exbed=" + exbed + ", meal=" + meal + ", roomImg=" + roomImg + ", resvId=" + resvId + ", packageId="
				+ packageId + ", hotelCate=" + hotelCate + ", roomNo=" + roomNo + "]";
	}

}
