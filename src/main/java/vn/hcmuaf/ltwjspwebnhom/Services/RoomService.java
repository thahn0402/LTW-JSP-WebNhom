package vn.hcmuaf.ltwjspwebnhom.Services;

import vn.hcmuaf.ltwjspwebnhom.beans.Room;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class RoomService {
    private static RoomService instance;
    Map<String, Room> roomMap = new HashMap<>();
    {
        roomMap.put("room1", new Room("room1", "Single Room 1", "available", 200, 1,"img/room/singleroom1.jpg"));
        roomMap.put("room2", new Room("room2", "Single Room 2", "available", 250, 1,"img/room/singleroom2.jpg"));
        roomMap.put("room3", new Room("room3", "Single Room 3", "available", 300, 1,"img/room/singleroom3.jpg"));
        roomMap.put("room4", new Room("room4", "Single Room 4", "available", 500, 1,"img/room/singleroom4.jpg"));
        roomMap.put("room5", new Room("room5", "Single Room 5", "available", 700, 1,"img/room/singleroom5.jpg"));
    }

    public static RoomService getInstance() {
        if (instance == null) {
            instance = new RoomService();
        }
        return instance;
    }

    private RoomService() {
    }

    public List<Room> getAll(){
        return new LinkedList<>(roomMap.values());
    }
}
