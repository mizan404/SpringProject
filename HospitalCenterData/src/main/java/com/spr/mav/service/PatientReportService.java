/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.service;

import com.spr.mav.dao.impl.IPatientReportDAO;
import com.spr.mav.model.PatientReport;
import com.spr.mav.service.impl.IPatientReportService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author mohdm
 */
@Service
public class PatientReportService implements IPatientReportService {

    @Autowired
    IPatientReportDAO patientReportDAO;

    @Override
    public PatientReport save(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public PatientReport update(HttpServletRequest request) {
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

        return patientReportDAO.getById(id);
    }

    @Override
    public PatientReport getByNid(int patient_nid) {
        return patientReportDAO.getByNid(patient_nid);
    }

}
