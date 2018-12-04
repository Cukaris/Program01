package com.service;

import com.model.Company;


import java.util.List;

/**
 * Created by Administrator on 2018/11/13 0013.
 */
public interface ICompanyService {
    public List<Company> getCompanys();
    public int deleteByCid(int cid);
    public Company foundBycid(int cid);

}