/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IReportDAO;
import com.spring.maven.model.Report;
import java.util.List;
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
public class ReportDAO implements IReportDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Report save(Report t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Report update(Report t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Report delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Report> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Report getById(int id) {
        Report report = (Report) sessionFactory.getCurrentSession().get(Report.class, id);
        sessionFactory.getCurrentSession().flush();
        return report;
    }

    @Override
    public Report getByNid(int patient_nid) {
        Report report = (Report) sessionFactory.getCurrentSession().get(Report.class, patient_nid);
        sessionFactory.getCurrentSession().flush();
        return report;
    }

}
