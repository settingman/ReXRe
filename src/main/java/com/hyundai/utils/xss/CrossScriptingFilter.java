package com.hyundai.utils.xss;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/*********************************
 * @function : CrossScriptingFilter
 * @author : Taeseung Choi
 * @Date : Jan 03. 2023.
 * XSS filtering
 *********************************/

public class CrossScriptingFilter implements Filter {
   
   public FilterConfig filterConfig;
   
   // 필터 초기화
   public void init(FilterConfig filterConfig) throws ServletException {
      this.filterConfig = filterConfig;
   }

   // 필터가 사용한 자원 반납
   public void destroy() {
      this.filterConfig = null;
   }

   /* request param을 이용하여 필터 작업 수행
    * 체인의 다음 필터 처리
    * response를 이용하여 응답의 필터링 작업 수행
    */
   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException { 
        chain.doFilter(new RequestWrapper((HttpServletRequest) request), response);
    }
   
}
