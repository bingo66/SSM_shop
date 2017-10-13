package ssm.shop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import ssm.shop.entity.User;

/*
 * 先登录后才能下单
 */
public class OrderInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = arg0.getSession();
		User user = (User) session.getAttribute("user");
		if (user!= null) {
			System.out.println(user);
			return true;
		}
		
		arg0.setAttribute("MSG", "请登录后再下单");
		arg0.getRequestDispatcher("/order/msg").forward(arg0, arg1);;
		return false;
	}

}
