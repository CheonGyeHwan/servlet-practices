package com.poscoict.guestbook.dao.test;

import java.util.ArrayList;
import java.util.List;

import com.poscoict.guestbook.dao.GuestbookDao;
import com.poscoict.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		testInsert();
		testFindAll();
//		testDelete();
	}
	
	public static void testInsert() {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("천계환");
		vo.setPassword("1234");
		vo.setMessage("Insert 테스트");
		
		GuestbookDao dao = new GuestbookDao();
		boolean result = dao.insert(vo);
		
		System.out.println(result ? "Success" : "Fail");
	}
	
	public static void testFindAll() {
		List<GuestbookVo> result = new ArrayList<>();
		
		GuestbookDao dao = new GuestbookDao();
		result = dao.findAll();
		
		for (GuestbookVo vo : result) {
			System.out.println(vo);
		}
	}
	
	public static void testDelete() {
		GuestbookDao dao = new GuestbookDao();
		boolean result = dao.delete(2, "1234");
		
		System.out.println(result ? "Success" : "Fail");
	}

}
