/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.dao;

import com.spr.mav.dao.impl.IPatientReportDAO;
import com.spr.mav.model.PatientReport;
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
public class PatientReportDAO implements IPatientReportDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public PatientReport save(PatientReport t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public PatientReport update(PatientReport t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public PatientReport delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<PatientReport> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public PatientReport getById(int id) {
        PatientReport patientReport = (PatientReport) sessionFactory.getCurrentSession().get(PatientReport.class, id);
        sessionFactory.getCurrentSession().flush();
        return patientReport;
    }

    @Override
    public PatientReport getByNid(int patient_nid) {
        PatientReport patientReport = (PatientReport) sessionFactory.getCurrentSession().get(PatientReport.class, patient_nid);
        sessionFactory.getCurrentSession().flush();
        return patientReport;
    }

}
