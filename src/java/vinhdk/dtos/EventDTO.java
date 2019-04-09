/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.dtos;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 *
 * @author vinhd
 */
public class EventDTO implements Serializable{
    private String eventID,eventName;
    private Timestamp startEvent;
    private int size;
    private String location,description,img;

    public EventDTO() {
    }

    public EventDTO(String eventID, String eventName, Timestamp startEvent, int size, String location, String description, String img) {
        this.eventID = eventID;
        this.eventName = eventName;
        this.startEvent = startEvent;
        this.size = size;
        this.location = location;
        this.description = description;
        this.img = img;
    }

    public EventDTO(String eventID, String eventName, Timestamp startEvent, String location, String img) {
        this.eventID = eventID;
        this.eventName = eventName;
        this.startEvent = startEvent;
        this.location = location;
        this.img = img;
    }

    public String getEventID() {
        return eventID;
    }

    public void setEventID(String eventID) {
        this.eventID = eventID;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }
    public Timestamp getStartEvent() {
        return startEvent;
    }

    public void setStartEvent(Timestamp startEvent) {
        this.startEvent = startEvent;
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
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

   
}
