package core.test2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//@Component("bag") 아래것과 같다
@Component
public class Bag {
	private Book book;

	
	public Bag() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	public Bag(Book book) {
		this.book = book;
	}
	@Override
	public String toString() {
		return "Bag [book=" + book + "]";
	}
//	@Autowired
	public void setBook(Book book) {
		this.book = book;
	}
	
}
