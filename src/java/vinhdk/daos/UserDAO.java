/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.daos;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import vinhdk.conn.MyConnection;
import vinhdk.dtos.UserDTO;

/**
 *
 * @author vinhd
 */
public class UserDAO implements Serializable {

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

    public boolean insert(UserDTO dto,String serect) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Insert into tblUser(Username,Password,Role,Fullname,Email,serectPass) values(?,?,?,?,?,?)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, dto.getUsername());
            preStm.setString(2, dto.getPassword());
            preStm.setString(3, "user");
            preStm.setString(4, dto.getFullname());
            preStm.setString(5, dto.getEmail());
            preStm.setString(6, serect);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean insertPrize(String username,String prizeId) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Insert into tblUserAward values(?,?)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            preStm.setString(2, prizeId);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean update(UserDTO dto) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Update tblUser set fullname=?,email=?,birthdate=?,Phonenumber=?,major=?,password=? where username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, dto.getFullname());
            preStm.setString(2, dto.getEmail());
            preStm.setDate(3, dto.getBirthdate());
            preStm.setString(4, dto.getPhone());
            preStm.setString(5, dto.getMajor());
            preStm.setString(6, dto.getPassword());
            preStm.setString(7, dto.getUsername());
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }
        public boolean updatePass(String username, String password, String serect) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Update tblUser set password = ? where username = ? and serectpass=?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, password);
            preStm.setString(2, username);
            preStm.setString(3, serect);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean updateImg(String username, String img) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Update tblUser set img = ? where username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(2, username);
            preStm.setString(1, img);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean delete(String username) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Delete from tblUserEvent where username = ? Delete from tblTeam where username = ? Delete from tblUserAward where username = ? Delete from tblUser where username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            preStm.setString(2, username);
            preStm.setString(3, username);
            preStm.setString(4, username);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public String login(String username, String password) throws Exception {
        String role = "failed";
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select role from tblUser where username = ? and password = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            preStm.setString(2, password);
            rs = preStm.executeQuery();
            if (rs.next()) {
                role = rs.getString("role");
            }
        } finally {
            closeConnection();
        }
        return role;
    }

    public String getImg(String username) throws Exception {
        String img = null;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select img from tblUser where username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            rs = preStm.executeQuery();
            if (rs.next()) {
                img = rs.getString("img");
            }
        } finally {
            closeConnection();
        }
        return img;
    }

    public List<UserDTO> serachByName(String name) throws Exception {
        List<UserDTO> list = new ArrayList<>();
        UserDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select username,fullname,email,major from tblUser where role = 'user' and fullname LIKE ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, "%" + name + "%");
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new UserDTO();
                dto.setUsername(rs.getString("username"));
                dto.setFullname(rs.getString("fullname"));
                dto.setEmail(rs.getString("email"));
                dto.setMajor(rs.getString("major"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public UserDTO serachByUserName(String username) throws Exception {
        UserDTO dto = null;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select Username,Password,Role,Fullname,Email,Birthdate,PhoneNumber,Major from tblUser where Username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            rs = preStm.executeQuery();
            if (rs.next()) {
                dto = new UserDTO(rs.getString("username"), rs.getString("Password"), rs.getString("fullname"), rs.getString("email"), rs.getString("PhoneNumber"), rs.getString("major"), rs.getDate("Birthdate"));
            }
        } finally {
            closeConnection();
        }
        return dto;
    }
}
