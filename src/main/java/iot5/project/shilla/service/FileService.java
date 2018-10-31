package iot5.project.shilla.service;

import java.util.List;

import iot5.project.shilla.model.File;

public interface FileService {
	
	/**
	 * 파일 정보를 저장한다.
	 * @param file - 파일 데이터
	 * @throws Exception
	 */
	public void insertFile(File file) throws Exception;
	
	/**
	 * 하나의 게시물에 종속된 파일 목록을 조회한다.
	 * @param file - 게시물 일련번호를 저장하고 있는 JavaBeans
	 * @return 파일데이터 컬렉션
	 * @throws Exception
	 */
	public List<File> selectFileList(File file) throws Exception;
	
	/**
	 * 하나의 객실 추가 페이지 종속된 파일 목록을 조회한다.
	 * @param file - 객실 일련번호를 저장하고 있는 JavaBeans
	 * @return
	 * @throws Exception
	 */
	public List<File> selectRoomFileList(File file) throws Exception;
	
	/**
	 * 하나의 QnA 문의에 종속된 파일 목록을 조회한다.
	 * @param file - QnA 게시물 일련번호를 저장하고 있는 JavaBeans
	 * @return
	 * @throws Exception
	 */
	public List<File> selectQnAFileList(File file) throws Exception;
	
	/**
	 * 하나의 게시물에 종속된 파일 목록을 삭제한다.
	 * @param file
	 * @throws Exception
	 */
	public void deleteFileAll(File file) throws Exception;
	
	/**
	 * 하나의 단일 파일에 대한 정보를 조회한다.
	 * @param file
	 * @return File - 저장된 경로 정보
	 * @throws Exception
	 */
	public File selectFile(File file) throws Exception;
	
	/**
	 * 하나의 단일 파일 정보를 삭제한다.
	 * @param file
	 * @throws Exception
	 */
	public void deleteFile(File file) throws Exception;
}
