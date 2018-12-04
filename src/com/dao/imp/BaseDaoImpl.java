package com.dao.imp;

import com.util.ConfigUtil;


import java.sql.*;

/**
 * Created by Administrator on 2018/11/8 0008.
 */
public class BaseDaoImpl {
    Connection conn=null;
    PreparedStatement ps = null;
    ResultSet rs =null;
    public Connection  getCon(){

        //step1����������

        try {
            Class.forName(ConfigUtil.getValue("mysql.driver"));
            //step2 ��ȡ���ݿ�����
            conn = DriverManager.getConnection(ConfigUtil.getValue("mysql.url"),
                    ConfigUtil.getValue("mysql.user"),
                    ConfigUtil.getValue("mysql.password"));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return conn;
    }


    public void close(Connection  conn, PreparedStatement ps, ResultSet rs){
        try {
            if(conn!=null)conn.close();
            if(ps!=null)ps.close();
            if(rs!=null)rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public  int  excupdate(final String sql,final Object[] objects){
        int i =0;
        conn = this.getCon();
        try {
            ps = conn.prepareStatement(sql);
            for(int j=0;j<objects.length;j++){
                ps.setObject(j+1,objects[j]);
            }
            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return  i;
    }

    public ResultSet  execQuery(final  String sql,final Object[] objects){
        this.getCon();
        try {
            ps =  conn.prepareStatement(sql);
            for(int i=0;i<objects.length;i++){
                ps.setObject(i+1,objects[i]);
            }
            rs = ps.executeQuery();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rs;
    }


    public static void main(String[] args) {
        System.out.println(new BaseDaoImpl().getCon());
    }
}
