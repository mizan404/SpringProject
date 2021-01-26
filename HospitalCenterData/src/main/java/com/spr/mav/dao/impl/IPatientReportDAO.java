/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spr.mav.dao.impl;

import com.spr.mav.common.ICommonDAO;
import com.spr.mav.model.PatientReport;
import java.util.List;

/**
 *
 * @author mohdm
 */
public interface IPatientReportDAO extends ICommonDAO<PatientReport> {

    public List<PatientReport> getByNid(int patient_nid);
}
