package com.dao.imp;

import com.dao.ICompanyDao;
import com.model.Company;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Administrator on 2018/11/13 0013.
 */
public class CompanyDaoImpl extends BaseDaoImpl implements ICompanyDao {
    @Override
    public List<Company> getCompanys() {
        String sql = "select * from company";
        Object[] objects = new Object[]{};
        ResultSet rs = this.execQuery(sql, objects);
        List<Company> list = new LinkedList<>();
        try {

            while(rs.next()){
                Company  company = new Company();
                company.setCid(rs.getInt(1));
                company.setZwName(rs.getString(2));
                company.setcName(rs.getString(3));
                company.setCplace(rs.getString(4));
                company.setCxz(rs.getString(5));
                company.setCgm(rs.getString(6));
                company.setCcy(rs.getString(7));
                company.setLsalary(rs.getDouble(8));
                company.setHsalary(rs.getDouble(9));
                list.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int deleteByCid(int cid) {
        String sql = "delete from company where c_id=?";
        Object[] objects = new Object[1];
        objects[0]=cid;
        int i = this.excupdate(sql, objects);
        return i;
    }

    @Override
    public Company foundBycid(int cid) {
        String sql = "select * from company where c_id =?";
        Object[] objects = new Object[1];
        objects[0]=cid;
        ResultSet rs = this.execQuery(sql, objects);
        Company company = new Company();
        try {
            while(rs.next()){
                company.setCid(rs.getInt(1));
                company.setZwName(rs.getString(2));
                company.setcName(rs.getString(3));
                company.setCplace(rs.getString(4));
                company.setCxz(rs.getString(5));
                company.setCgm(rs.getString(6));
                company.setCcy(rs.getString(7));
                company.setLsalary(rs.getDouble(8));
                company.setHsalary(rs.getDouble(9));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close(conn,ps,rs);
        }

        return company;

    }

    public static void main(String[] args) {
        System.out.println(new CompanyDaoImpl().foundBycid(6));
        CompanyDaoImpl companyDao=new CompanyDaoImpl();
        List<Company> companys = companyDao.getCompanys();
        System.out.println(companys.get(8).getCcy());
    }




}
