package org.zerock.mapper;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Test1VO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Test1test {
	@Setter(onMethod_ = @Autowired)
	private Test1Mapper mapper;

	@Test
	public void testGetList() {
		assertNotNull(mapper);
		List<Test1VO> list = mapper.getList();
//		assertEquals(3, list.size());
		assertTrue(list.size() > 0);

	}

	@Test
	public void testInsert() {
		Test1VO test1 = new Test1VO();
		test1.setName("iron");
		test1.setAge(100);

		int cnt = mapper.insert(test1);

		assertEquals(1, cnt);
	}

	@Test
	public void testInsetSelectKey() {
		Test1VO test1 = new Test1VO();
		test1.setName("new iron");
		test1.setAge(101);

		assertEquals(0, test1.getId());

		int cnt = mapper.insertSelectKey(test1);

		assertEquals(1, cnt);
		assertNotEquals(0, test1.getId());
	}

	@Test
	public void testRead() {
		Test1VO tr = mapper.read(1);
		assertNotNull(tr);
		assertEquals(1, tr.getId());

		Test1VO test1 = new Test1VO();
		test1.setName("new iron");
		test1.setAge(101);

		int cnt = mapper.insertSelectKey(test1);

		long key = test1.getId();

		Test1VO newt = mapper.read(key);

		assertNotNull(newt);
		assertEquals(key, newt.getId());

	}

	@Test
	public void testDelete() {
		int cnt = mapper.delete(0);
		assertEquals(0, cnt);

		cnt = mapper.delete(13);
		assertEquals(1, cnt);

	}

	@Test
	public void testUpdate() {
		long id = 10;

		Test1VO test1 = new Test1VO();
		test1.setId(10);
		test1.setName("gee");
		test1.setAge(30);

		int cnt = mapper.update(test1);

		assertEquals(1, cnt);

		Test1VO test10 = mapper.read(id);
		assertEquals(test1.getName(), test10.getName());
		assertEquals(test1.getAge(), test10.getAge());
	}

}
