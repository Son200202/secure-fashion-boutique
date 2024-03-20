//package cnpm.config;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.Cookie;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebFilter("/*")
//public class c implements Filter {
//
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletResponse httpResponse = (HttpServletResponse) response;
//
//        Cookie[] cookies = httpRequest.getCookies();
//        if (cookies != null) {
//            for (Cookie cookie : cookies) {
//                if (isThirdPartyCookie(cookie, httpRequest)) {
//                    // Xóa cookie thứ ba
//                    cookie.setMaxAge(0);
//                    httpResponse.addCookie(cookie);
//                    System.out.println("Removed third-party cookie: " + cookie.getName());
//                }
//            }
//        }
//
//        chain.doFilter(request, response);
//    }
//
//    private boolean isThirdPartyCookie(Cookie cookie, HttpServletRequest request) {
//        // Kiểm tra xem cookie có phải là cookie thứ ba không
//        String cookieDomain = cookie.getDomain();
//        return true;
//    }
//
//
//    // Các phương thức khác của Filter interface
//    @Override
//    public void init(FilterConfig filterConfig) throws ServletException {
//        // Khởi tạo
//    }
//
//    @Override
//    public void destroy() {
//        // Hủy bỏ Filter
//    }
//}