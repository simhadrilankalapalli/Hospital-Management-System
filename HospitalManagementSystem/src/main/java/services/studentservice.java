package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.student;

public class studentservice {
    private Connection conn;

    public studentservice(Connection conn) {
        this.conn = conn;
    }

    // Signup method in hospital management
    public boolean signupstudent(student st) {
        boolean f = false;
        PreparedStatement pmst = null;
        try {
            String sql = "INSERT INTO signup (name, email, password) VALUES (?, ?, ?)";
            pmst = conn.prepareStatement(sql);
            pmst.setString(1, st.getName());
            pmst.setString(2, st.getEmail());
            pmst.setString(3, st.getPassword());
            int i = pmst.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pmst != null) pmst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return f;
    }

    
    public student login(String em, String psw) {
    	
    	student u = null;
    	
    	try {
    		String sql = "select * from signup where email=? and password=?";
    		PreparedStatement ps = conn.prepareStatement(sql);
    		ps.setString(1, em);
    		ps.setString(2, psw);
    		
    		ResultSet rs = ps.executeQuery();
    		
    		while(rs.next())
    		{
    			u = new student();
    			u.setId(rs.getString(1));
    			u.setName(rs.getString(2));
    			u.setEmail(rs.getString(3));
    			u.setPassword(rs.getString(4));
    		}
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return u;
    }
    
    
    
    public boolean addstudent(student st) {
        boolean f = false;
        PreparedStatement pmst = null;
        try {
            String sql = "INSERT INTO srinu (Pinnum, name, email, branch) VALUES (?, ?, ?, ?)";
            pmst = conn.prepareStatement(sql);
            pmst.setString(1, st.getPinnum());
            pmst.setString(2, st.getName());
            pmst.setString(3, st.getEmail());
            pmst.setString(4, st.getBranch());
            int i = pmst.executeUpdate();
            if (i > 0) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pmst != null) pmst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return f;
    }



    public List<student> fetchall() {
        List<student> std = new ArrayList<student>();
        PreparedStatement pmst = null;
        ResultSet rs = null;
        try {
            String sql = "select * from srinu";
            pmst = conn.prepareStatement(sql);
            rs = pmst.executeQuery();
            while (rs.next()) {
                student s = new student();
                s.setPinnum(rs.getString("Pinnum")); // Ensure the column names match your table schema
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setBranch(rs.getString("branch"));
                std.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pmst != null) pmst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return std;
    }

    public boolean deletestudent(String pinnum) {
        boolean f = false;
        PreparedStatement pmst = null;
        try {
            String sql = "delete from srinu where pinnum = ?";
            pmst = conn.prepareStatement(sql);
            pmst.setString(1, pinnum);
            int i = pmst.executeUpdate();
            if (i > 0) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pmst != null) pmst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return f;
    }


    public boolean updatestudent(student s) {
        boolean f = false;
        PreparedStatement pmst = null;
        try {
            String sql = "update srinu set name = ?, email = ?, branch = ? where pinnum = ?";
            pmst = conn.prepareStatement(sql);
            pmst.setString(1, s.getName());
            pmst.setString(2, s.getEmail());
            pmst.setString(3, s.getBranch());
            pmst.setString(4, s.getPinnum());
            int i = pmst.executeUpdate();
            if (i > 0) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pmst != null) pmst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return f;
    }

    public student getbyid(String pinnum) {
        student s = null;
        PreparedStatement pmst = null;
        ResultSet rs = null;
        try {
            String sql = "select * from srinu where pinnum = ?";
            pmst = conn.prepareStatement(sql);
            pmst.setString(1, pinnum);
            rs = pmst.executeQuery();
            if (rs.next()) {
                s = new student();
                s.setPinnum(rs.getString("Pinnum")); // Ensure the column names match your table schema
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setBranch(rs.getString("branch"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pmst != null) pmst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return s;
    }
}
