package vn.hcmuaf.ltwjspwebnhom.beans;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Booking {
    private Map<String, Room> data;
    private static Booking instance;

    private Booking() {
        data = new HashMap<>();
    }

    public static Booking getInstance() {
        if (instance == null) {
            instance = new Booking();
        }
        return instance;
    }

    public Room get(String id) {
        return data.get(id);
    }

    public void put(Room room) {
        data.put(room.getId(), room);
    }

    public void remove(String id) {
        data.remove(id);
    }

    public double total() {
        double total = 0;
        for (Room r : data.values()) {
            total += r.total();
        }
        return total;
    }

    public int quantity() {
        int quantity = 0;
        for (Room r : data.values()) {
            quantity += r.getQuantitySold();
        }
        return quantity;
    }

    public Collection<Room> getData() {
        return data.values();
    }
}
