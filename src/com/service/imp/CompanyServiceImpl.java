package com.service.imp;


import com.dao.ICompanyDao;
import com.dao.imp.CompanyDaoImpl;
import com.model.Company;
import com.service.ICompanyService;

import java.util.List;

/**
 * Created by Administrator on 2018/11/13 0013.
 */
public class CompanyServiceImpl implements ICompanyService {
    ICompanyDao companyDao = new CompanyDaoImpl();
    @Override
    public List<Company> getCompanys() {
        return companyDao.getCompanys();
    }

    @Override
    public int deleteByCid(int cid) {
        return companyDao.deleteByCid(cid);
    }

    @Override
    public Company foundBycid(int cid) {
        return companyDao.foundBycid(cid);
    }
}