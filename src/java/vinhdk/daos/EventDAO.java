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
import vinhdk.dtos.EventDTO;

/**
 *
 * @author vinhd
 */
public class EventDAO implements Serializable {

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

    public List<EventDTO> searchEvent(String search) throws Exception {
        List<EventDTO> list = new ArrayList<>();
        EventDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select EventID,EventName,StartEvent,location,img from tblEvents where EventName LIKE ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, "%" + search + "%");
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new EventDTO(rs.getString("EventID"), rs.getString("EventName"), rs.getTimestamp("StartEvent"), rs.getString("location"), rs.getString("img"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<EventDTO> loadnow() throws Exception {
        List<EventDTO> list = new ArrayList<>();
        EventDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select EventID,EventName,StartEvent,location,img from tblEvents where StartEvent like GETDATE()";
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new EventDTO(rs.getString("EventID"), rs.getString("EventName"), rs.getTimestamp("StartEvent"), rs.getString("location"), rs.getString("img"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }
        public List<EventDTO> loadpart() throws Exception {
        List<EventDTO> list = new ArrayList<>();
        EventDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select EventID,EventName,StartEvent,location,img from tblEvents where StartEvent < GETDATE()";
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new EventDTO(rs.getString("EventID"), rs.getString("EventName"), rs.getTimestamp("StartEvent"), rs.getString("location"), rs.getString("img"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }
            public List<EventDTO> loadfuture() throws Exception {
        List<EventDTO> list = new ArrayList<>();
        EventDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select EventID,EventName,StartEvent,location,img from tblEvents where StartEvent > GETDATE()";
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new EventDTO(rs.getString("EventID"), rs.getString("EventName"), rs.getTimestamp("StartEvent"), rs.getString("location"), rs.getString("img"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public boolean delete(String id) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Delete from tblEventAward where EventID = ? Delete from tblTeam where EventID = ? Delete from tblUserEvent where EventID = ? Delete from tblEvents where EventID = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, id);
            preStm.setString(2, id);
            preStm.setString(3, id);
            preStm.setString(4, id);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean update(EventDTO dto) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "update tblEvents set EventName = ?,EventSize=?,Location=?,Description=?,StartEvent=?,img=? where EventId = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, dto.getEventName());
            preStm.setInt(2, dto.getSize());
            preStm.setString(3, dto.getLocation());
            preStm.setString(4, dto.getDescription());
            preStm.setTimestamp(5, dto.getStartEvent());
            preStm.setString(6, dto.getImg());
            preStm.setString(7, dto.getEventID());
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean insert(EventDTO dto) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Insert into tblEvents values(?,?,?,?,?,?,?)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(2, dto.getEventName());
            preStm.setInt(3, dto.getSize());
            preStm.setString(4, dto.getLocation());
            preStm.setString(5, dto.getDescription());
            preStm.setTimestamp(6, dto.getStartEvent());
            preStm.setString(7, dto.getImg());
            preStm.setString(1, dto.getEventID());
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public EventDTO loadDataOfEvent(String id) throws Exception {
        EventDTO dto = null;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select EventID,EventName,StartEvent,EventSize,Description,location,img from tblEvents where EventID = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, id);
            rs = preStm.executeQuery();
            if (rs.next()) {
                dto = new EventDTO(rs.getString("EventID"), rs.getString("EventName"), rs.getTimestamp("StartEvent"), rs.getInt("EventSize"), rs.getString("location"), rs.getString("description"), rs.getString("img"));
            }
        } finally {
            closeConnection();
        }
        return dto;
    }
}
