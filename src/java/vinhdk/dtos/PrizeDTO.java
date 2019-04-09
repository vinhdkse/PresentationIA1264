/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vinhdk.dtos;

import java.io.Serializable;

/**
 *
 * @author vinhd
 */
public class PrizeDTO implements Serializable{
    private String prizeName,prizeId,description,address;
    private int rank,quantity;

    public PrizeDTO() {
    }

    public PrizeDTO(String prizeName, String prizeId, int rank, int quantity, String address) {
        this.prizeName = prizeName;
        this.prizeId = prizeId;
        this.rank = rank;
        this.quantity = quantity;
        this.address = address;
    }

    public PrizeDTO(String prizeName, String prizeId, String description, String address, int rank, int quantity) {
        this.prizeName = prizeName;
        this.prizeId = prizeId;
        this.description = description;
        this.address = address;
        this.rank = rank;
        this.quantity = quantity;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    
}
