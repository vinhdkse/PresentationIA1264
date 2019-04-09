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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import vinhdk.conn.MyConnection;
import vinhdk.dtos.TeamDTO;

/**
 *
 * @author vinhd
 */
public class TeamDAO implements Serializable {

    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

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

    public boolean insert(TeamDTO dto) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Insert into tblTeam(username,name,size,datecreate,eventid) values(?,?,?,?,?)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, dto.getUsername());
            preStm.setString(2, dto.getName());
            preStm.setInt(3, dto.getSize());
            preStm.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
            preStm.setString(5, dto.getEventid());
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public List<TeamDTO> getAllTeam(String username) throws Exception {
        List<TeamDTO> list = new ArrayList<>();
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select name from tblTeam where username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            rs = preStm.executeQuery();
            while(rs.next()){
                TeamDTO dto = new TeamDTO();
                dto.setName(rs.getString("name"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }
}
