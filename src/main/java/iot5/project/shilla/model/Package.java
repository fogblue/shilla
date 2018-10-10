package iot5.project.shilla.model;

public class Package {
	private int id;
	private String packageType;
	private String packagePrice;
	private String packageImg;
	private String packageContent;
	private int resvId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPackageType() {
		return packageType;
	}
	public void setPackageType(String packageType) {
		this.packageType = packageType;
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
	public int getResvId() {
		return resvId;
	}
	public void setResvId(int resvId) {
		this.resvId = resvId;
	}
	
	@Override
	public String toString() {
		return "Package [id=" + id + ", packageType=" + packageType + ", packagePrice=" + packagePrice + ", packageImg="
				+ packageImg + ", packageContent=" + packageContent + ", resvId=" + resvId + "]";
	}
}
