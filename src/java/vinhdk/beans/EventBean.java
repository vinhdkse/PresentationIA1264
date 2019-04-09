/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.beans;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import vinhdk.daos.EventDAO;
import vinhdk.dtos.EventDTO;

/**
 *
 * @author vinhd
 */
public class EventBean implements Serializable {

    private String EventID, EventName;
    private Timestamp StartEvent;
    private int size;
    private String location, Description, img;
    private EventDTO dto;

    public EventBean() {
    }

    public EventDTO getDto() {
        return dto;
    }

    public void setDto(EventDTO dto) {
        this.dto = dto;
    }

    public String getEventID() {
        return EventID;
    }

    public void setEventID(String EventID) {
        this.EventID = EventID;
    }

    public String getEventName() {
        return EventName;
    }

    public void setEventName(String EventName) {
        this.EventName = EventName;
    }

    public Timestamp getStartEvent() {
        return StartEvent;
    }

    public void setStartEvent(Timestamp StartEvent) {
        this.StartEvent = StartEvent;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public List<EventDTO> search() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.searchEvent(EventName);
    }

    public boolean delete() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.delete(EventID);
    }

    public boolean insert() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.insert(dto);
    }

    public boolean update() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.update(dto);
    }

    public EventDTO get() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.loadDataOfEvent(EventID);
    }

    public List<EventDTO> loadNow() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.loadnow();
    }

    public List<EventDTO> loadPart() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.loadpart();
    }

    public List<EventDTO> loadFuture() throws Exception {
        EventDAO dao = new EventDAO();
        return dao.loadfuture();
    }
}
