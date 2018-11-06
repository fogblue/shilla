package iot5.project.shilla.model;

public class Room {
	private int id;
	private int roomNo;
	private String roomType;
	private String bedType;
	private int roomPrice;
	private String hotelCate;
	private int limitStart;
	private int listCount;

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

	public String getHotelCate() {
		return hotelCate;
	}

	public void setHotelCate(String hotelCate) {
		this.hotelCate = hotelCate;
	}

	public int getLimitStart() {
		return limitStart;
	}

	public void setLimitStart(int limitStart) {
		this.limitStart = limitStart;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	@Override
	public String toString() {
		return "Room [id=" + id + ", roomNo=" + roomNo + ", roomType=" + roomType + ", bedType=" + bedType
				+ ", roomPrice=" + roomPrice + ", hotelCate=" + hotelCate + ", limitStart=" + limitStart
				+ ", listCount=" + listCount + ", getId()=" + getId() + ", getRoomNo()=" + getRoomNo()
				+ ", getRoomType()=" + getRoomType() + ", getBedType()=" + getBedType() + ", getRoomPrice()="
				+ getRoomPrice() + ", getHotelCate()=" + getHotelCate() + ", getLimitStart()=" + getLimitStart()
				+ ", getListCount()=" + getListCount() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

}