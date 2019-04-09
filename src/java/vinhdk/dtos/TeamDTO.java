/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.dtos;

import java.io.Serializable;

/**
 *
 * @author vinhd
 */
public class TeamDTO implements Serializable{
    private String username,name,eventid;
    private int size;

    public TeamDTO() {
    }

    public TeamDTO(String username, String name, int size,String eventid) {
        this.username = username;
        this.name = name;
        this.size = size;
        this.eventid = eventid;
    }

    public String getUsername() {
        return username;
    }

    public String getEventid() {
        return eventid;
    }

    public void setEventid(String eventid) {
        this.eventid = eventid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
    
}
