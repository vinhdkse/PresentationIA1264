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
import vinhdk.dtos.PrizeDTO;

/**
 *
 * @author vinhd
 */
public class PrizeDAO implements Serializable {

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

    public List<PrizeDTO> searchEvent(String search) throws Exception {
        List<PrizeDTO> list = new ArrayList<>();
        PrizeDTO dto;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select prizeid,prizename,rank,quantity,address from tblAward where prizename LIKE ? and quantity>0";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, "%" + search + "%");
            rs = preStm.executeQuery();
            while (rs.next()) {
                dto = new PrizeDTO(rs.getString("prizename"), rs.getString("prizeid"), rs.getInt("rank"), rs.getInt("quantity"), rs.getString("address"));
                list.add(dto);
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<String> getPrizeId(String eventid) throws Exception {
        List<String> list = new ArrayList<>();
        try {
            conn = MyConnection.getMyConnection();
            String sql = "select prizeid from tblEventAward where eventid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, eventid);
            rs = preStm.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("prizeid"));
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<String> getPrize(String username) throws Exception {
        List<String> list = new ArrayList<>();
        try {
            conn = MyConnection.getMyConnection();
            String sql = "select prizeid from tblUserAward where username = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, username);
            rs = preStm.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("prizeid"));
            }
        } finally {
            closeConnection();
        }
        return list;
    }

    public List<PrizeDTO> searchname(List<String> listS) throws Exception {
        List<PrizeDTO> list = new ArrayList<>();
        if (listS.size() == 0) {
            listS = new ArrayList<>();
        } else {
            try {
                conn = MyConnection.getMyConnection();
                String sql = "";
                if (listS.size() == 1) {
                    sql = "Select prizename,prizeid from tblAward where prizeid = ? and quantity > 0";
                    preStm = conn.prepareStatement(sql);
                    preStm.setString(1, listS.get(0));
                } else if (listS.size() > 1) {
                    sql = "Select prizename,prizeid from tblAward where quantity >0 and prizeid = '" + listS.get(0) + "'";
                    for (int i = 1; i < listS.size(); i++) {
                        sql += " or prizeid = '" + listS.get(i) + "'";
                    }
                    preStm = conn.prepareStatement(sql);

                }
                rs = preStm.executeQuery();
                while (rs.next()) {
                    PrizeDTO dto = new PrizeDTO();
                    dto.setPrizeName(rs.getString("prizename"));
                    dto.setPrizeId(rs.getString("prizeid"));
                    list.add(dto);
                }
            } finally {
                closeConnection();
            }
        }
        return list;
    }

    public PrizeDTO searchEventbyId(String id) throws Exception {
        PrizeDTO dto = null;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select prizeid,prizename,rank,quantity,address,description from tblAward where prizeid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, id);
            rs = preStm.executeQuery();
            if (rs.next()) {
                dto = new PrizeDTO(rs.getString("prizename"), rs.getString("prizeid"), rs.getString("description"), rs.getString("address"), rs.getInt("rank"), rs.getInt("quantity"));
            }
        } finally {
            closeConnection();
        }
        return dto;
    }

    public boolean delete(String prizeid) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Delete from tblUserAward where prizeid = ? Delete from tblEventAward where prizeid = ? Delete from tblAward where prizeid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, prizeid);
            preStm.setString(2, prizeid);
            preStm.setString(3, prizeid);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean insert(PrizeDTO dto) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "insert into tblAward values(?,?,?,?,?,?)";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, dto.getPrizeName());
            preStm.setString(2, dto.getPrizeId());
            preStm.setString(3, dto.getDescription());
            preStm.setString(5, dto.getAddress());
            preStm.setInt(4, dto.getRank());
            preStm.setInt(6, dto.getQuantity());
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean update(PrizeDTO dto) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Update tblAward set prizename = ?, description = ?, rank = ?, quantity = ?, address = ? where prizeid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, dto.getPrizeName());
            preStm.setString(6, dto.getPrizeId());
            preStm.setString(2, dto.getDescription());
            preStm.setString(5, dto.getAddress());
            preStm.setInt(3, dto.getRank());
            preStm.setInt(4, dto.getQuantity());
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

    public boolean updatePrize(String prizeid) throws Exception {
        boolean check = false;
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Update tblAward set  quantity = quantity - 1 where prizeid = ?";
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, prizeid);
            check = preStm.executeUpdate() > 0;
        } finally {
            closeConnection();
        }
        return check;
    }

}
