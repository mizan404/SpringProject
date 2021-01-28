/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IApproveListDAO;
import com.spring.maven.model.ApproveList;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author mohdm
 */
@Repository
@Transactional
public class ApproveListDAO implements IApproveListDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public ApproveList save(ApproveList t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public ApproveList update(ApproveList t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ApproveList delete(int id) {
        ApproveList approveList = (ApproveList) sessionFactory.getCurrentSession().load(ApproveList.class, id);
        sessionFactory.getCurrentSession().flush();
        return approveList;
    }

    @Override
    public List<ApproveList> getAll() {
        List<ApproveList> approveLists = sessionFactory.getCurrentSession().createCriteria(ApproveList.class).list();
        sessionFactory.getCurrentSession().flush();
        return approveLists;
    }

    @Override
    public ApproveList getById(int id) {
        ApproveList approveList = (ApproveList) sessionFactory.getCurrentSession().get(ApproveList.class, id);
        sessionFactory.getCurrentSession().flush();
        return approveList;
    }

}
