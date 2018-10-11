package iot5.project.shilla.model;

public class File {
	private int id;
	private String category;
	private String originName;
	private String fileDir;
	private String fileName;
	private String contentType;
	private long fileSize;
	private String regDate;
	private String editDate;
	private String qnaFile;
	private String roomImg;
	private String packageImg;
	private int documentId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getFileDir() {
		return fileDir;
	}
	public void setFileDir(String fileDir) {
		this.fileDir = fileDir;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getEditDate() {
		return editDate;
	}
	public void setEditDate(String editDate) {
		this.editDate = editDate;
	}
	public String getQnaFile() {
		return qnaFile;
	}
	public void setQnaFile(String qnaFile) {
		this.qnaFile = qnaFile;
	}
	public String getRoomImg() {
		return roomImg;
	}
	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}
	public String getPackageImg() {
		return packageImg;
	}
	public void setPackageImg(String packageImg) {
		this.packageImg = packageImg;
	}
	public int getDocumentId() {
		return documentId;
	}
	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}
	@Override
	public String toString() {
		return "File [id=" + id + ", category=" + category + ", originName=" + originName + ", fileDir=" + fileDir
				+ ", fileName=" + fileName + ", contentType=" + contentType + ", fileSize=" + fileSize + ", regDate="
				+ regDate + ", editDate=" + editDate + ", qnaFile=" + qnaFile + ", roomImg=" + roomImg + ", packageImg="
				+ packageImg + ", documentId=" + documentId + "]";
	}
	
}
