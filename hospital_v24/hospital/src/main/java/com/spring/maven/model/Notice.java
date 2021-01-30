/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author B8
 */
@Entity
public class Notice {

    @Id
    private int id;
    private String date;
    private double notice_number;
    private String notice_title;
    private String notice_discription;
    private String notice_privilege;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getNotice_number() {
        return notice_number;
    }

    public void setNotice_number(double notice_number) {
        this.notice_number = notice_number;
    }

    public String getNotice_title() {
        return notice_title;
    }

    public void setNotice_title(String notice_title) {
        this.notice_title = notice_title;
    }

    public String getNotice_discription() {
        return notice_discription;
    }

    public void setNotice_discription(String notice_discription) {
        this.notice_discription = notice_discription;
    }

    public String getNotice_privilege() {
        return notice_privilege;
    }

    public void setNotice_privilege(String notice_privilege) {
        this.notice_privilege = notice_privilege;
    }

}
