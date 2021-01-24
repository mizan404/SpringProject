/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao.impl;

import com.spring.maven.common.ICommonDAO;
import com.spring.maven.model.HospitalAppointment;

/**
 *
 * @author mohdm
 */
public interface IHospitalAppointmentDAO extends ICommonDAO<HospitalAppointment> {

    public HospitalAppointment getByNid(int patient_nid);
}
