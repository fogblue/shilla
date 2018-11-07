package iot5.project.shilla.model;

public class RoomForReserv extends Reservation {
	private int id;
	private int roomNo;
	private String roomType;
	private String bedType;
	private int roomPrice;
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
		return "RoomForReserv [id=" + id + ", roomNo=" + roomNo + ", roomType=" + roomType + ", bedType=" + bedType
				+ ", roomPrice=" + roomPrice + ", limitStart=" + limitStart + ", listCount=" + listCount + "]";
	}
}
