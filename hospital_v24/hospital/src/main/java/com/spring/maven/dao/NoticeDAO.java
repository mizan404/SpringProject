/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.INoticeDAO;
import com.spring.maven.model.Notice;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author B8
 */
@Repository
@Transactional
public class NoticeDAO implements INoticeDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Notice save(Notice t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Notice update(Notice t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Notice delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Notice> getAll() {
        List<Notice> notices = sessionFactory.getCurrentSession().createCriteria(Notice.class).list();
        sessionFactory.getCurrentSession().flush();
        return notices;
    }

    @Override
    public Notice getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Notice> getAllByDoctorPrivilege() {
        String hqlQuery = "from Notice where notice_privilege=:privilege";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("privilege", "Doctor");
        List<Notice> nList = query.list();
        sessionFactory.getCurrentSession().flush();
        return nList;
    }

    @Override
    public List<Notice> getAllByStaffPrivilege() {
        String hqlQuery = "from Notice where notice_privilege=:privilege";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("privilege", "Staff");
        List<Notice> nList = query.list();
        sessionFactory.getCurrentSession().flush();
        return nList;
    }

}
