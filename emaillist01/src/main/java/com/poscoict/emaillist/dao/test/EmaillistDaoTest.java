package com.poscoict.emaillist.dao.test;

import java.util.List;
import com.poscoict.emaillist.dao.EmaillistDao;
import com.poscoict.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {

	public static void main(String[] args) {
		testInsert();
//		testFindAll();
	}

	private static void testInsert() {
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("천");
		vo.setLastName("계환");
		vo.setEmail("aabbcc@naver.com");
		
		boolean result = new EmaillistDao().insert(vo);
		System.out.println(result ? "Success" : "Fail");
	}

	private static void testFindAll() {
		List<EmaillistVo> list = new EmaillistDao().findAll();
		for (EmaillistVo vo : list) {
			System.out.println(vo);
		}
	}
	
	

}
