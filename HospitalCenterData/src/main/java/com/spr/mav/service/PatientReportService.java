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
        String patient_nid = request.getParameter("patient_nid");
        String patient_name = request.getParameter("patient_name");
        String patient_age = request.getParameter("patient_age");
        String patient_gender = request.getParameter("patient_gender");
        String patient_address = request.getParameter("patient_address");
        String temperature = request.getParameter("temperature");
        String weight = request.getParameter("weight");
        String blood_pressure = request.getParameter("blood_pressure");
        String date = request.getParameter("date");

        String symptom1 = request.getParameter("symptom1");
        String symptom2 = request.getParameter("symptom2");
        String symptom3 = request.getParameter("symptom3");
        String symptom4 = request.getParameter("symptom4");
        String symptom5 = request.getParameter("symptom5");

        String symptom_duration1 = request.getParameter("symptom_duration1");
        String symptom_duration2 = request.getParameter("symptom_duration2");
        String symptom_duration3 = request.getParameter("symptom_duration3");
        String symptom_duration4 = request.getParameter("symptom_duration4");
        String symptom_duration5 = request.getParameter("symptom_duration5");

        String medicine1 = request.getParameter("medicine1");
        String medicine2 = request.getParameter("medicine2");
        String medicine3 = request.getParameter("medicine3");
        String medicine4 = request.getParameter("medicine4");
        String medicine5 = request.getParameter("medicine5");

        String medicine_dose1 = request.getParameter("medicine_dose1");
        String medicine_dose2 = request.getParameter("medicine_dose2");
        String medicine_dose3 = request.getParameter("medicine_dose3");
        String medicine_dose4 = request.getParameter("medicine_dose4");
        String medicine_dose5 = request.getParameter("medicine_dose5");

        String medicine_duration1 = request.getParameter("medicine_duration1");
        String medicine_duration2 = request.getParameter("medicine_duration2");
        String medicine_duration3 = request.getParameter("medicine_duration3");
        String medicine_duration4 = request.getParameter("medicine_duration4");
        String medicine_duration5 = request.getParameter("medicine_duration5");

        String test1 = request.getParameter("test1");
        String test2 = request.getParameter("test2");
        String test3 = request.getParameter("test3");
        String test4 = request.getParameter("test4");
        String test5 = request.getParameter("test5");

        String test_report1 = request.getParameter("testReport1");
        String test_report2 = request.getParameter("testReport2");
        String test_report3 = request.getParameter("testReport3");
        String test_report4 = request.getParameter("testReport4");
        String test_report5 = request.getParameter("testReport5");
        System.out.println("--------------------------------------- " + test_report5);

        PatientReport report = new PatientReport();
        report.setPatient_nid(patient_nid);
        report.setPatient_name(patient_name);
        report.setPatient_age(patient_age);
        report.setPatient_gender(patient_gender);
        report.setPatient_address(patient_address);
        report.setTemperature(temperature);
        report.setWeight(weight);
        report.setBlood_pressure(blood_pressure);
        report.setDate(date);

        report.setSymptom1(symptom1);
        report.setSymptom2(symptom2);
        report.setSymptom3(symptom3);
        report.setSymptom4(symptom4);
        report.setSymptom5(symptom5);

        report.setSymptom_duration1(symptom_duration1);
        report.setSymptom_duration2(symptom_duration2);
        report.setSymptom_duration3(symptom_duration3);
        report.setSymptom_duration4(symptom_duration4);
        report.setSymptom_duration5(symptom_duration5);

        report.setMedicine1(medicine1);
        report.setMedicine2(medicine2);
        report.setMedicine3(medicine3);
        report.setMedicine4(medicine4);
        report.setMedicine5(medicine5);

        report.setMedicine_dose1(medicine_dose1);
        report.setMedicine_dose2(medicine_dose2);
        report.setMedicine_dose3(medicine_dose3);
        report.setMedicine_dose4(medicine_dose4);
        report.setMedicine_dose5(medicine_dose5);

        report.setMedicine_duration1(medicine_duration1);
        report.setMedicine_duration2(medicine_duration2);
        report.setMedicine_duration3(medicine_duration3);
        report.setMedicine_duration4(medicine_duration4);
        report.setMedicine_duration5(medicine_duration5);

        report.setTest1(test1);
        report.setTest2(test2);
        report.setTest3(test3);
        report.setTest4(test4);
        report.setTest5(test5);

        report.setTest_report1(test_report1);
        report.setTest_report2(test_report2);
        report.setTest_report3(test_report3);
        report.setTest_report4(test_report4);
        report.setTest_report5(test_report5);

        return patientReportDAO.save(report);

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
        System.out.println("----------------- " + patient_nid);
        return patientReportDAO.getByNid(patient_nid);

    }

}
