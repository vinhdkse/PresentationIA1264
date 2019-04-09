/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import vinhdk.daos.PrizeDAO;
import vinhdk.dtos.PrizeDTO;

/**
 *
 * @author vinhd
 */
public class PrizeBean implements Serializable {

    private String prizeName, prizeId, EventId;
    private int forRank;

    public PrizeBean() {
    }

    public String getPrizeName() {
        return prizeName;
    }

    public void setPrizeName(String prizeName) {
        this.prizeName = prizeName;
    }

    public String getPrizeId() {
        return prizeId;
    }

    public void setPrizeId(String prizeId) {
        this.prizeId = prizeId;
    }

    public String getEventId() {
        return EventId;
    }

    public void setEventId(String EventId) {
        this.EventId = EventId;
    }

    public int getForRank() {
        return forRank;
    }

    public void setForRank(int forRank) {
        this.forRank = forRank;
    }

    public List<PrizeDTO> search() throws Exception {
        PrizeDAO dao = new PrizeDAO();
        return dao.searchEvent(prizeName);
    }

    public PrizeDTO get() throws Exception {
        PrizeDAO dao = new PrizeDAO();
        return dao.searchEventbyId(prizeId);
    }

    public boolean delete() throws Exception {
        PrizeDAO dao = new PrizeDAO();
        return dao.delete(prizeId);
    }

    public boolean insert(PrizeDTO dto) throws Exception {
        PrizeDAO dao = new PrizeDAO();
        return dao.insert(dto);
    }

    public boolean update(PrizeDTO dto) throws Exception {
        PrizeDAO dao = new PrizeDAO();
        return dao.update(dto);
    }
    public boolean updatePrize() throws Exception {
        PrizeDAO dao = new PrizeDAO();
        return dao.updatePrize(prizeId);
    }
    public List<PrizeDTO> getName() throws Exception {
        PrizeDAO dao = new PrizeDAO();
        List<String> list = dao.getPrizeId(EventId);
        return dao.searchname(list);
    }

    public List<PrizeDTO> getPrize(String username) throws Exception {
        PrizeDAO dao = new PrizeDAO();
        List<String> list = dao.getPrize(username);
        return dao.searchname(list);
    }
}
