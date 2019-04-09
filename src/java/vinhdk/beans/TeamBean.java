/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.beans;

import java.io.Serializable;
import java.util.List;
import vinhdk.daos.TeamDAO;
import vinhdk.dtos.TeamDTO;

/**
 *
 * @author vinhd
 */
public class TeamBean implements Serializable {
    
    private String username, name, eventid;
    private int size;
    
    public TeamBean() {
    }

    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getEventid() {
        return eventid;
    }
    
    public void setEventid(String eventid) {
        this.eventid = eventid;
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

    public boolean insert(TeamDTO dto) throws Exception {
        TeamDAO dao = new TeamDAO();
        return dao.insert(dto);
    }

    public List<TeamDTO> get() throws Exception {
        TeamDAO dao = new TeamDAO();
        return dao.getAllTeam(username);
    }
}
