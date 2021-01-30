/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.INoticeDAO;
import com.spring.maven.model.Notice;
import com.spring.maven.service.impl.INoticeService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B8
 */
@Service
public class NoticeService implements INoticeService {

    @Autowired
    INoticeDAO noticeDAO;

    @Override
    public Notice save(HttpServletRequest request) {
        String date = request.getParameter("date");
        double notice_number = Double.parseDouble(request.getParameter("notice_number"));
        String notice_title = request.getParameter("notice_title");
        String notice_discription = request.getParameter("notice_discription");
        String notice_privilege = request.getParameter("notice_privilege");

        Notice notice = new Notice();
        notice.setDate(date);
        notice.setNotice_number(notice_number);
        notice.setNotice_title(notice_title);
        notice.setNotice_discription(notice_discription);
        notice.setNotice_privilege(notice_privilege);

        return noticeDAO.save(notice);
    }

    @Override
    public Notice update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Notice delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Notice> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Notice getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Notice> getAllByDoctorPrivilege() {
        return noticeDAO.getAllByDoctorPrivilege();
    }

    @Override
    public List<Notice> getAllByStaffPrivilege() {
        return noticeDAO.getAllByStaffPrivilege();
    }
}
