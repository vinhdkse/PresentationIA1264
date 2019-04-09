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
public class UserEventDTO implements Serializable {

    private String eventid, username;
    private boolean team, lead;

    public boolean isTeam() {
        return team;
    }

    public void setTeam(boolean team) {
        this.team = team;
    }

    public boolean isLead() {
        return lead;
    }

    public void setLead(boolean lead) {
        this.lead = lead;
    }

    public UserEventDTO(String eventid, String username, boolean team, boolean lead) {
        this.eventid = eventid;
        this.username = username;
        this.team = team;
        this.lead = lead;
    }

    public UserEventDTO(String eventid, String username) {
        this.eventid = eventid;
        this.username = username;
    }

    public UserEventDTO() {
    }

    public UserEventDTO(String username) {
        this.username = username;
    }

    public String getEventid() {
        return eventid;
    }

    public void setEventid(String eventid) {
        this.eventid = eventid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

}
