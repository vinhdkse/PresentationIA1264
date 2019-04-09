/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.beans;

import java.io.Serializable;
import java.util.List;
import vinhdk.daos.UserEventDAO;
import vinhdk.dtos.UserEventDTO;

/**
 *
 * @author vinhd
 */
public class UserEventBean implements Serializable {

    private String id, username;

    public UserEventBean() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public List<UserEventDTO> get() throws Exception {
        UserEventDAO dao = new UserEventDAO();
        return dao.getUser(id);
    }

    public List<UserEventDTO> getE() throws Exception {
        UserEventDAO dao = new UserEventDAO();
        return dao.getEvent(username);
    }

    public boolean insert(UserEventDTO dto) throws Exception {
        UserEventDAO dao = new UserEventDAO();
        return dao.insert(dto);
    }
        public boolean delete() throws Exception {
        UserEventDAO dao = new UserEventDAO();
        return dao.delete(username, id);
    }
}
