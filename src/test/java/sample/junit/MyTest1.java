package sample.junit;

import static org.junit.Assert.*;

import org.junit.Test;

public class MyTest1 {

	@Test
	public void test() {
		int i = 3;
		if(i!=3) {
			
			fail("i 는 3이 아닙니다.");
		}
	}
	@Test
	public void equals() {
		int i = 3;
		assertEquals(i, 3);
		boolean b = true;
		
		assertTrue(b);
	}
	
	@Test
	public void notEquals() {
		int i = 5;
		assertNotEquals(i, 3);
		boolean b = false;

		assertFalse(b);

	}

}
