/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.beans;

import java.io.Serializable;
import vinhdk.daos.EventPrizeDAO;

/**
 *
 * @author vinhd
 */
public class EventPrizeBean implements Serializable {

    private String eventId, prizeId;
    private int quantity;

    public EventPrizeBean() {
    }

    public String getEventId() {
        return eventId;
    }

    public void setEventId(String eventId) {
        this.eventId = eventId;
    }

    public String getPrizeId() {
        return prizeId;
    }

    public void setPrizeId(String prizeId) {
        this.prizeId = prizeId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean insert() throws Exception {
        EventPrizeDAO dao = new EventPrizeDAO();
        return dao.insert(eventId, prizeId);
    }

    public boolean update() throws Exception {
        EventPrizeDAO dao = new EventPrizeDAO();
        return dao.update(eventId, prizeId);
    }

    public boolean delete() throws Exception {
        EventPrizeDAO dao = new EventPrizeDAO();
        return dao.delete(eventId, prizeId);
    }
}
