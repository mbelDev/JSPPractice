package com.mbelDev.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
	public static void makeCookie( HttpServletResponse response, 
									String _cookieName,
									String _cookieValue, 
									int _cookieMaxAge) {
		Cookie cookie = new Cookie(_cookieName,_cookieValue);
		cookie.setPath("/");
		cookie.setMaxAge(_cookieMaxAge);
		response.addCookie(cookie);
		//System.out.println(_cookieName+"/"+_cookieValue+"/"+_cookieMaxAge);
	}
	
	public static String readCookie(HttpServletRequest request,
							String _cookieName) {
		Cookie[] cookies = request.getCookies();
		String responseValue = ""; 
		if(cookies != null) {
			for(Cookie item : cookies) {
				String cookieName = item.getName();
				String cookieValue = item.getValue();
				if(cookieName.equals(_cookieName)){
					responseValue = cookieValue;
				}
			}
		}
		return responseValue;
	}
	
	public static void deleteCookie(HttpServletResponse response, String _cookieName) {
		makeCookie(response, _cookieName, null, 0);
	}
}
