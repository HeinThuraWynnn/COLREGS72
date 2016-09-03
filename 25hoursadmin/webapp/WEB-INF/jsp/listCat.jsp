<%@ page language="java" pageEncoding="utf8"
    contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>All Categories</title>  
</head>  
<body>  
<h1>List Categories</h1>  
<h3><a href="add.do">Add More Category</a></h3> 

 <form:form method="POST" action="search.do" modelAttribute="categoryBean">  
 <p>Please input your search key (using name)<form:input path="catName" />
<input type="submit" value="<spring:message code='button.listEmp.search'/>" /></p>
<c:if test="${!empty categoryBean.catList}">  

<%--For displaying Previous link except for the 1st page --%>
    <c:if test="${categoryBean.currentPage != 1}">
        <td><a href="page.do?page=${categoryBean.currentPage - 1}">Previous</a></td>
    </c:if>
 
    <%--For displaying Page numbers. 
    The when condition does not display a link for the current page--%>
    <table border="1" cellpadding="5" cellspacing="5">
        <tr>
            <c:forEach begin="1" end="${categoryBean.noOfpages}" var="i">
                <c:choose>
                    <c:when test="${categoryBean.currentPage eq i}">
                        <td>${i}</td>
                    </c:when>
                    <c:otherwise>
                        <td><a href="page.do?page=${i}">${i}</a></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </tr>
    </table>
     
    <%--For displaying Next link --%>
    <c:if test="${categoryBean.currentPage lt categoryBean.noOfpages}">
        <td><a href="page.do?page=${categoryBean.currentPage + 1}">Next</a></td>
    </c:if>
    <br>
    <br>
 <table align="left" border="1">  
  <tr>  
   <th>Category ID</th>  
   <th>Category Name</th>  
  </tr>  
  
  <c:forEach items="${categoryBean.catList}" var="category">  
   <tr>  
    <td><c:out value="${categoryBean.catID}"/></td>  
    <td><c:out value="${categoryBean.catName}"/></td>  
   </tr>  
  </c:forEach>  
 </table>  
</c:if>  
</form:form>
</body>  
</html> 