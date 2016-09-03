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
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
      <title>Spring MVC Form Handling</title>  
     </head>  
     <body>  
      <h2>Add Category Data</h2>  
      <form:form method="POST" action="save.do"  modelAttribute="categoryBean">  
          <table>  
           <tr>  
               <td><form:label path="id">Category ID:</form:label></td>  
               <td><form:input path="id" value="${categoryBean.category.catID}" readonly="true"/></td>  
           </tr>  
           <tr>  
               <td><form:label path="name">Category Name:</form:label></td>  
               <td><form:input path="name" value="${categoryBean.category.catName}"/></td>  
           </tr>  
			<tr> 
             <td colspan="2"><input type="submit" value="Submit"/></td>  
            </tr>  
       </table>   
      </form:form>  
        
      <c:if test="${!empty categoryBean.catList}">  
      <h2>List Categories</h2>  
     <table align="left" border="1">  
      <tr>  
       <th>Category ID</th>  
       <th>Category Name</th>  
       <th>Actions on Row</th>  
      </tr>  
      
      <c:forEach items="${categoryBean.empList}" var="employee">  
       <tr>  
        <td><c:out value="${category.catID}"/></td>  
        <td><c:out value="${category.catName}"/></td>   
        <td align="center"><a href="edit.do?id=${category.catID}">Edit</a> | <a href="delete.do?id=${category.catID}">Delete</a></td>  
       </tr>  
      </c:forEach>  
     </table>  
    </c:if>  
     </body>  
    </html>  