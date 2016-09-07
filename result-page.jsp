<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${orderForm.sizeOfvalidOrderItem > 0}">
<table border="1">
	<tr>
		<th>
			Company
		</th>
		<th>
		  	Name
		</th> 
        	<th>
         		Inches   
        	</th>
        	<th>
         		Pris
        	</th>
        	<th>
        		Antal   
        	</th>
		<th>
          		Sum 
    		</th>	
	</tr>
	<c:forEach items="${orderForm.orderItemList}" var="myitem" varStatus="status">
	<c:if test="${myitem.isValidate}">
	<tr>
		<td>
			<c:out value="${myitem.companyName}"/> 
		</td>
		<td>
			<c:out value="${myitem.modellName}"/>
		</td>
		<td>
			<c:out value="${myitem.modellScreenSize}"/>
		</td>
		<td>
			<c:out value="${myitem.price}"/>
		</td>
		<td>
			<c:out value="${myitem.amountOf}"/>
		</td>
		<td>
		<c:out value="${myitem.sumOfAmountStr}"/>
		</td>
	</tr>
	</c:if>
		<c:if test="${status.last}">
		<tr>
		<td colspan="4">
		<td>
		Total
		 </td>
		 <td>
		<c:out value="${orderForm.totalSum}"/>
		</td>
		</tr>
		</c:if>
	</c:forEach>
	</table>
	</c:when>
</c:choose>



</body>
</html>
