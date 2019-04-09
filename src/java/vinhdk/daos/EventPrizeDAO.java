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
import vinhdk.conn.MyConnection;

/**
 *
 * @author vinhd
 */
public class EventPrizeDAO implements Serializable {

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

    public boolean insert(String eventid, String prizeid) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "insert into tblEventAward(eventid,prizeid,quantity) values(?,?,1)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, eventid);
            preStm.setString(2, prizeid);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean update(String eventid, String prizeid) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "update tblEventAward set quantity = quantity + 1 where eventid = ? and prizeid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, eventid);
            preStm.setString(2, prizeid);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean delete(String eventid, String prizeid) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "delete from tblEventAward where eventid = ? and prizeid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, eventid);
            preStm.setString(2, prizeid);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }
}
