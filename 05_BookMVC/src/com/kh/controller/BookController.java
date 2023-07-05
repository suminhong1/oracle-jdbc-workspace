package com.kh.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import com.kh.model.dao.BookDAO;
import com.kh.model.vo.Book;
import com.kh.model.vo.Member;
import com.kh.model.vo.Rent;

public class BookController {

	private BookDAO dao = new BookDAO();
	private Member member = new Member(); // 로그인 정보 여기에 담아
	
	public ArrayList<Book> printBookAll() {
		ArrayList<Book> bk = null;
		try {
			bk = dao.printBookAll();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return bk;
	}

	public boolean registerBook(Book book) {
		try {
			ArrayList<Book> booklist = dao.printBookAll();
			dao.registerBook(book);
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean sellBook(int no) {
		// 책 삭제 DELETE문!
		
		return false;
	}

	public boolean registerMember(Member member) {
				try {
					dao.registerMember(member);
					return true;
				} catch (SQLException e) {
					e.printStackTrace();
				}
		return false;
	}

	public Member login(String id, String password) {
		return member;
	}

	public boolean deleteMember() {
		return false;
	}

	public boolean rentBook(int no) {
		return false;
	}
	
	public boolean deleteRent(int no) {
		return false;
	}
	
	public ArrayList<Rent> printRentBook(){
		return null;
	}
}
