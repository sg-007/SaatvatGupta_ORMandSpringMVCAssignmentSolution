<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Update Customer</h1>  
       <form:form method="POST" action="/GradedProjectSpring/customer/update">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>   
         <tr>    
          <td>First Name : </td>   
          <td><form:input path="firstName"  /></td>  
         </tr>    
         <tr>    
          <td>Last Name : </td>    
          <td><form:input path="lastName" /></td>  
         </tr>   
         <tr>    
          <td>Email : </td>    
          <td><form:input path="email" /></td>  
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Update" /></td>    
         </tr>    
        </table>    
       </form:form>