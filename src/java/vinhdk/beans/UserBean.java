/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.beans;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import vinhdk.daos.UserDAO;
import vinhdk.dtos.UserDTO;

/**
 *
 * @author vinhd
 */
public class UserBean implements Serializable {

    private String username, password, role, fullname, email, phone, major;
    private Timestamp birthdate;

    public UserBean() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Timestamp getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Timestamp birthdate) {
        this.birthdate = birthdate;
    }

    public boolean insert(UserDTO dto,String serect) throws Exception {
        UserDAO dao = new UserDAO();
        return dao.insert(dto,serect);
    }

    public boolean insertPrize(String prizeid) throws Exception {
        UserDAO dao = new UserDAO();
        return dao.insertPrize(username, prizeid);
    }

    public boolean update(UserDTO dto) throws Exception {
        UserDAO dao = new UserDAO();
        return dao.update(dto);
    }

    public boolean delete() throws Exception {
        UserDAO dao = new UserDAO();
        return dao.delete(username);
    }

    public String login() throws Exception {
        UserDAO dao = new UserDAO();
        return dao.login(username, password);
    }

    public List<UserDTO> search() throws Exception {
        UserDAO dao = new UserDAO();
        return dao.serachByName(fullname);
    }

    public UserDTO searchInfo() throws Exception {
        UserDAO dao = new UserDAO();
        return dao.serachByUserName(username);
    }

    public String getImg() throws Exception {
        UserDAO dao = new UserDAO();
        return dao.getImg(username);
    }

    public boolean updateImg(String img) throws Exception {
        UserDAO dao = new UserDAO();
        return dao.updateImg(username, img);
    }

    public boolean updatePass(String serect) throws Exception {
        UserDAO dao = new UserDAO();
        return dao.updatePass(username, password, serect);
    }
}
