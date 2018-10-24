package iot5.project.shilla.model;

public class Room {
	private int id;
	private int roomNo;
	private String roomType;
	private String bedType;
	private int roomPrice;
	private String roomImg;
	private int packageId;
	private String hotelCategory;
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
	public String getRoomImg() {
		return roomImg;
	}
	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getHotelCategory() {
		return hotelCategory;
	}
	public void setHotelCategory(String hotelCategory) {
		this.hotelCategory = hotelCategory;
	}
	@Override
	public String toString() {
		return "Room [id=" + id + ", roomNo=" + roomNo + ", roomType=" + roomType + ", bedType=" + bedType
				+ ", roomPrice=" + roomPrice + ", roomImg=" + roomImg + ", packageId=" + packageId + ", hotelCategory="
				+ hotelCategory + "]";
	}
	
}