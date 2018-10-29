package iot5.project.shilla.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iot5.project.shilla.model.File;
import iot5.project.shilla.service.FileService;

@Service
public class FileServiceImpl implements FileService {

	Logger logger = LoggerFactory.getLogger(FileServiceImpl.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertFile(File file) throws Exception {
		try {
			int result = sqlSession.insert("FileMapper.insertFile", file);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("저장된 파일 정보가 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("파일 정보 등록에 실패했습니다.");
		}
		
	}

	@Override
	public List<File> selectFileList(File file) throws Exception {
		List<File> result = null;
		
		try {
			result = sqlSession.selectList("FileMapper.selectFileList", file);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("파일 정보 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public void deleteFileAll(File file) throws Exception {
		try {
			sqlSession.delete("FileMapper.deleteFileAll", file);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("첨부 파일 삭제에 실패했습니다.");
		}
	}

	@Override
	public File selectFile(File file) throws Exception {
		File result = null; 
		try {
			result = sqlSession.selectOne("FileMapper.selectFile", file);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("존재하지 않는 파일에 대한 요청입니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("파일 정보 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public void deleteFile(File file) throws Exception {
		try {
			int result = sqlSession.delete("FileMapper.deleteFile", file);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("삭제된 파일 정보가 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("첨부 파일 삭제에 실패했습니다.");
		}
	}

	@Override
	public List<File> selectQnAFileList(File file) throws Exception {
		List<File> result = null;
		try {
			result = sqlSession.selectList("FileMapper.selectQnAFileList", file);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("파일 정보 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public List<File> selectRoomFileList(File file) throws Exception {
		List<File> result = null;
		try {
			result = sqlSession.selectList("FileMapper.selectRoomFileList", file);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("파일 정보 조회에 실패했습니다.");
		}
		return result;
	}
}
