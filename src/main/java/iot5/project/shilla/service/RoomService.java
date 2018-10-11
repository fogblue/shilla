package iot5.project.shilla.service;

import iot5.project.shilla.model.Room;

public interface RoomService {
	public void insertRoom(Room room) throws Exception;
	
	public void deleteRoom(Room room) throws Exception;
	
	public void updateRoom(Room room) throws Exception;
	
	public Room selectRoom (Room room) throws Exception;
}
