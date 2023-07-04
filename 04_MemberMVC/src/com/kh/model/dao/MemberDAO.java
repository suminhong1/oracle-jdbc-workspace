package com.kh.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.model.vo.Member;

import config.ServerInfo;

/*
 * dao란?
 * Database Access object의 약자로 디비에 접근하는 로직
 * (일명 비즈니스 로직)을 담고 있는 객체
 */

public class MemberDAO implements MemberDAOTemplate {
	
	private Properties p = new Properties();
	public MemberDAO() {
		try {
			p.load(new FileInputStream("src/config/jdbc.properties"));
			Class.forName(ServerInfo.DRIVER_NAME);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public Connection getConnect() throws SQLException {
		return null;
	}

	@Override
	public void closeAll(PreparedStatement st, Connection conn) throws SQLException {
	}

	@Override
	public void closeAll(ResultSet rs, PreparedStatement st, Connection conn) {
	}

	@Override
	public void registerMember(Member vo) throws SQLException {
	}

	@Override
	public void updatePassword(Member vo) throws SQLException {
	}

	@Override
	public void updateName(Member vo) throws SQLException {
	}

	@Override
	public Member getMember(String id) throws SQLException {
		return null;
	}

	@Override
	public Member login(Member vo) throws SQLException {
		return null;
	}

}
