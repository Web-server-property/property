<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ include file="../dbconn.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String year = request.getParameter("birthyy");
    String month = request.getParameter("birthmm");
    String day = request.getParameter("birthdd");
    String birth = year + "/" + month + "/" + day;
    String mail1 = request.getParameter("mail1");
    String mail2 = request.getParameter("mail2");
    String mail = mail1 + "@" + mail2;
    String phone1 = request.getParameter("phone1");
    String phone2 = request.getParameter("phone2");
    String phone3 = request.getParameter("phone3");
    String phone = phone1 + "-" + phone2 + "-" + phone3;
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    String address = address1 + " " + address2;

    String cardType = request.getParameter("card_type");
    String cardName = request.getParameter("cc_name");
    String cardNumber = request.getParameter("cc_num_1") + "-" + request.getParameter("cc_num_2") + "-" + request.getParameter("cc_num_3") + "-" + request.getParameter("cc_num_4");
    String cardExpiration = request.getParameter("cc_expiration_yy") + "/" + request.getParameter("cc_expiration_mm");
    String cvc = request.getParameter("cvc");

    java.sql.Timestamp timestamp = new java.sql.Timestamp(System.currentTimeMillis());

    // 디버깅 출력
    System.out.println("id: " + id);
    System.out.println("password: " + password);
    System.out.println("name: " + name);
    System.out.println("gender: " + gender);
    System.out.println("birth: " + birth);
    System.out.println("mail: " + mail);
    System.out.println("phone: " + phone);
    System.out.println("address: " + address);
    System.out.println("cardType: " + cardType);
    System.out.println("cardName: " + cardName);
    System.out.println("cardNumber: " + cardNumber);
    System.out.println("cardExpiration: " + cardExpiration);
    System.out.println("cvc: " + cvc);
    System.out.println("timestamp: " + timestamp);
%>

<sql:update dataSource="${dataSource}" var="resultSet">
    UPDATE member 
    SET password = ?, name = ?, gender = ?, birth = ?, mail = ?, phone = ?, address = ?, cardType = ?, cardName = ?, cardNumber = ?, cardExpiration = ?, cvc = ?, regist_day = ?
    WHERE id = ?
    <sql:param value="<%=password%>" />
    <sql:param value="<%=name%>" />
    <sql:param value="<%=gender%>" />
    <sql:param value="<%=birth%>" />
    <sql:param value="<%=mail%>" />
    <sql:param value="<%=phone%>" />
    <sql:param value="<%=address%>" />
    <sql:param value="<%=cardType != null ? cardType : "" %>" />
    <sql:param value="<%=cardName != null ? cardName : "" %>" />
    <sql:param value="<%=cardNumber != null ? cardNumber : "" %>" />
    <sql:param value="<%=cardExpiration != null ? cardExpiration : "" %>" />
    <sql:param value="<%=cvc != null ? cvc : "" %>" />
    <sql:param value="<%=timestamp%>" />
    <sql:param value="<%=id%>" />
</sql:update>

<c:if test="${resultSet >= 1}">
    <c:redirect url="resultMember.jsp?msg=1" />
</c:if>
<c:if test="${resultSet < 1}">
    <c:redirect url="exceptionNoPage.jsp" />
</c:if>
