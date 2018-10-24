package iot5.project.shilla.model;

public class Package {
	private int id;
	private String packageName;
	private String packagePrice;
	private String packageImg;
	private String packageContent;
	private String hotelCategory;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public String getPackagePrice() {
		return packagePrice;
	}
	public void setPackagePrice(String packagePrice) {
		this.packagePrice = packagePrice;
	}
	public String getPackageImg() {
		return packageImg;
	}
	public void setPackageImg(String packageImg) {
		this.packageImg = packageImg;
	}
	public String getPackageContent() {
		return packageContent;
	}
	public void setPackageContent(String packageContent) {
		this.packageContent = packageContent;
	}
	public String getHotelCategory() {
		return hotelCategory;
	}
	public void setHotelCategory(String hotelCategory) {
		this.hotelCategory = hotelCategory;
	}
	
	@Override
	public String toString() {
		return "Package [id=" + id + ", packageName=" + packageName + ", packagePrice=" + packagePrice + ", packageImg="
				+ packageImg + ", packageContent=" + packageContent + ", hotelCategory=" + hotelCategory + "]";
	}
}
