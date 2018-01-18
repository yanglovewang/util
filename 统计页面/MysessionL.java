package Bservlet;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;
/**
 * 
 * @author yangchengju
 *@2018年1月18日
 *会话监听，统计页面
 */
public class MysessionL implements HttpSessionListener {

	public void sessionCreated(HttpSessionEvent e) {
		
		HttpSession session = e.getSession();
		ServletContext context = session.getServletContext();
		Integer counter = (Integer)context.getAttribute("counter");
		if(counter == null) {
			counter = new Integer(1);
			context.setAttribute("counter", counter);
		}else {
			counter = counter +1;
		}
		context.setAttribute("counter", counter);
		
	}
		

	public void sessionDestroyed(HttpSessionEvent e) {
		HttpSession session = e.getSession();
		ServletContext context = session.getServletContext();
		Integer counter = (Integer)context.getAttribute("counter");
		counter = counter -1;
		context.setAttribute("counter", counter);
		
	}

}
