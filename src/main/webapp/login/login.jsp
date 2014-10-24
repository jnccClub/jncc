<%--  
  Created by jncc hpf.  
  User: hpf  
  Date: 14-10-15  
  Time: 下午3:46  
  To change this template use File | Settings | File Templates.  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="loginFrame">
	<s:form action="doLogin" method="POST" >
		<tr>
			<td colspan="2"><s:actionerror /> <s:fielderror /></td>
		</tr>
		<s:textfield name="loginname" label="Login Name" />
		<s:password name="passwd" label="Password" />
		<tr align="center">
			<td colspan="2"><s:submit value="Login" theme="simple" cssClass="btn btn-primary"/> <s:reset
					value="Reset" theme="simple" cssClass="btn btn-primary"/></td>
		</tr>
	</s:form>
</div>
