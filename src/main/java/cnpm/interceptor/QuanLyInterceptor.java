package cnpm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cnpm.entity.TaiKhoan;
import java.net.InetAddress;

public class QuanLyInterceptor extends HandlerInterceptorAdapter{
	 private final String allowedIP = "192.168.1.1";
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		InetAddress inetAddress = InetAddress.getLocalHost();
		String clientIP = inetAddress.getHostAddress();
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null){
			response.sendRedirect(request.getContextPath() + "/dangnhap");
			return false;
		}else{
			
			TaiKhoan taikhoan = (TaiKhoan) session.getAttribute("user");
			if(!taikhoan.getVaitro().getMaVT().equals("QL")) {
				
				response.sendRedirect(request.getContextPath() + "/403");
				return false;
			} 
			if (!clientIP.equals(allowedIP)) {
	            response.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied " + inetAddress.getHostAddress());
	            return false;
	        }
			
		}
		
		return true;
	}
}
