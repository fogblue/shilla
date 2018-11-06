package iot5.project.shilla.model;

public class RoomForReserv extends ResvRoom {
	private int roomNo;
	private String roomType;
	private String bedType;
	private int roomPrice;
	private int packageId;
	private String hotelCate;
	private int limitStart;
	private int listCount;

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
		return "RoomForReserv [roomNo=" + roomNo + ", roomType=" + roomType + ", bedType=" + bedType + ", roomPrice="
				+ roomPrice + ", packageId=" + packageId + ", hotelCate=" + hotelCate + ", limitStart=" + limitStart
				+ ", listCount=" + listCount + ", getRoomNo()=" + getRoomNo() + ", getRoomType()=" + getRoomType()
				+ ", getBedType()=" + getBedType() + ", getRoomPrice()=" + getRoomPrice() + ", getPackageId()="
				+ getPackageId() + ", getHotelCate()=" + getHotelCate() + ", getLimitStart()=" + getLimitStart()
				+ ", getListCount()=" + getListCount() + ", getId()=" + getId() + ", getRoomId()=" + getRoomId()
				+ ", getCheckIn()=" + getCheckIn() + ", getCheckOut()=" + getCheckOut() + ", getExbed()=" + getExbed()
				+ ", getMeal()=" + getMeal() + ", getTotalPrice()=" + getTotalPrice() + ", getResvDate()="
				+ getResvDate() + ", getMemberId()=" + getMemberId() + ", toString()=" + super.toString()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + "]";
	}

}
