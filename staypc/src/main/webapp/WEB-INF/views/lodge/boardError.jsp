<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<%
	out.print("장애가 발생하였습니다!!<BR>");
	out.print("장애 내용 : " + exception.getMessage() + "<BR>");
		
%>
