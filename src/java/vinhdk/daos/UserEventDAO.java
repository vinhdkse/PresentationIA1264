/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.daos;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import vinhdk.conn.MyConnection;
import vinhdk.dtos.UserEventDTO;

/**
 *
 * @author vinhd
 */
public class UserEventDAO implements Serializable {

    private Connection conn;
    private ResultSet rs;
    private PreparedStatement preStm;

    private void closeConnection() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (preStm != null) {
            preStm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }

    public List<UserEventDTO> getUser(String id) throws Exception {
        List<UserEventDTO> list = new ArrayList<>();
        UserEventDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select username from tblUserEvent where eventid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, id);
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new UserEventDTO(rs.getString("username"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<UserEventDTO> getEvent(String id) throws Exception {
        List<UserEventDTO> list = new ArrayList<>();
        UserEventDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select eventid from tblUserEvent where username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, id);
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new UserEventDTO();
                dto.setEventid(rs.getString("eventid"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public boolean insert(UserEventDTO dto) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Insert into tblUserEvent(Username,EventID,haveTeam,haveLeader) values(?,?,?,?)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, dto.getUsername());
            preStm.setString(2, dto.getEventid());
            preStm.setBoolean(3, dto.isTeam());
            preStm.setBoolean(4, dto.isLead());
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }
        public boolean delete(String username,String evenid) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "delete from tblUserEvent where username = ? and eventid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            preStm.setString(2, evenid);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }
}
