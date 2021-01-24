package com.bookreview.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bookreview.bean.Bookreview;

public class BookreviewDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net/sql12388211", "sql12388211",
					"CqvMFeUvfh");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(Bookreview u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into bookreview(title,writer,content,image) values(?,?,?,?)");
			ps.setString(1, u.getTitle());
			ps.setString(2, u.getWriter());
			ps.setString(3, u.getContent());
			ps.setString(4, u.getImage());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Bookreview u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update bookreview set title=?,writer=?,content=?,image=? where seq=?");
			ps.setString(1, u.getTitle());
			ps.setString(2, u.getWriter());
			ps.setString(3, u.getContent());
			ps.setString(4, u.getImage());
			ps.setInt(5, u.getSeq());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Bookreview u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from bookreview where seq=?");
			ps.setInt(1, u.getSeq());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Bookreview> getAllRecords() {
		List<Bookreview> list = new ArrayList<Bookreview>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from bookreview");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Bookreview u = new Bookreview();
				u.setSeq(rs.getInt("seq"));
				u.setTitle(rs.getString("title"));
				u.setWriter(rs.getString("writer"));
				u.setContent(rs.getString("content"));
				u.setImage(rs.getString("image"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Bookreview getRecordById(int seq) {
		Bookreview u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from bookreview where seq=?");
			ps.setInt(1, seq);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Bookreview();
				u.setSeq(rs.getInt("seq"));
				u.setTitle(rs.getString("title"));
				u.setWriter(rs.getString("writer"));
				u.setContent(rs.getString("content"));
				u.setImage(rs.getString("image"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}
