package iot5.project.shilla.model;

public class Hotel {
	private String category;
	private String tel;
	private String zipcode;
	private String addr;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	@Override
	public String toString() {
		return "Hotel [category=" + category + ", tel=" + tel + ", zipcode=" + zipcode + ", addr=" + addr + "]";
	}
}