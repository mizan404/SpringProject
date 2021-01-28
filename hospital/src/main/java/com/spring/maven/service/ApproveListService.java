package com.spring.maven.service;

import com.spring.maven.dao.impl.IApproveListDAO;
import com.spring.maven.model.ApproveList;
import com.spring.maven.service.impl.IApproveListService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ApproveListService implements IApproveListService {

    @Autowired
    IApproveListDAO approveListDAO;

    @Override
    public ApproveList save(HttpServletRequest request) {
        int patient_nid = Integer.parseInt(request.getParameter("patient_nid"));
        String patient_problem = request.getParameter("patient_problem");
        String contact_number = request.getParameter("contact_number");
        String appiontmentDate = request.getParameter("appointmentDate");

        ApproveList approveList = new ApproveList();

        approveList.setPatient_nid(patient_nid);
        approveList.setPatient_problem(patient_problem);
        approveList.setContact_number(contact_number);
        approveList.setAppointmentDate(appiontmentDate);
        return approveListDAO.save(approveList);

    }

    @Override
    public ApproveList update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

    }

    @Override
    public ApproveList delete(int id) {
        return approveListDAO.delete(id);
    }

    @Override
    public List<ApproveList> getAll() {
        return approveListDAO.getAll();
    }

    @Override
    public ApproveList getById(int id) {
        return approveListDAO.getById(id);
    }

}
