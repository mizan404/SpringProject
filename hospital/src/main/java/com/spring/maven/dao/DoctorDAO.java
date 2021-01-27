/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IDoctorDAO;
import com.spring.maven.model.Doctor;
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
public class DoctorDAO implements IDoctorDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override

    public Doctor save(Doctor t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Doctor update(Doctor t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Doctor delete(int id) {
        Doctor doctor = (Doctor) sessionFactory.getCurrentSession().load(Doctor.class, id);
        sessionFactory.getCurrentSession().delete(doctor);
        sessionFactory.getCurrentSession().flush();
        return doctor;
    }

    @Override
    public List<Doctor> getAll() {
        List<Doctor> doctors = sessionFactory.getCurrentSession().createCriteria(Doctor.class).list();
        sessionFactory.getCurrentSession().flush();
        return doctors;
    }

    @Override
    public Doctor getById(int id) {
        Doctor doctor = (Doctor) sessionFactory.getCurrentSession().get(Doctor.class, id);
        sessionFactory.getCurrentSession().flush();
        return doctor;
    }

}
