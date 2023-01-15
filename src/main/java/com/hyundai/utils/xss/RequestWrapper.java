package com.hyundai.utils.xss;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
/*********************************
 * @function : RequestWrapper
 * @author : Taeseung Choi
 * @Date : Jan 03. 2023.
 * request를 가로채서 공격문자를 필터링할 메서드를 가지고 있는 클래스
 *********************************/


public final class RequestWrapper extends HttpServletRequestWrapper { // 상속
  
    public RequestWrapper(HttpServletRequest servletRequest) {
        super(servletRequest);// 부모 클래스의 생성자 호출
    } 
 
    // 파라미터값 가져오기
    public String[] getParameterValues(String parameter) {
 
      String[] values = super.getParameterValues(parameter);
      if (values==null)  {
                  return null;
          }
      int count = values.length;
      String[] encodedValues = new String[count];
      for (int i = 0; i < count; i++) {
                 encodedValues[i] = cleanXSS(values[i]);
       }
      return encodedValues;
    }
 
    // 파라미터값 설정
    public String getParameter(String parameter) {
          String value = super.getParameter(parameter); // 전달받은 파라미터 불러오기
          if (value == null) {
                 return null;
                  }
          return cleanXSS(value);
    } // 파라미터에 따라 어느 값을 리턴해줄건지
 
    // header 값을 얻어옴 - 클라이언트의 정보
    public String getHeader(String name) {
        String value = super.getHeader(name);
        if (value == null)
            return null;
        return cleanXSS(value);
 
    }
    
    // 클라이언트의 요청을 변경
   private String cleanXSS(String value) {
      value = value.replaceAll("<", "&lt;").replaceAll(">", "&gt;");
      value = value.replaceAll("\\(", "&#40;").replaceAll("\\)", "&#41;");
      value = value.replaceAll("'", "&#39;");
      value = value.replaceAll("eval\\((.*)\\)", "");
      value = value.replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']", "\"\"");
      value = value.replaceAll("script", "");
      return value;
   }
   
}