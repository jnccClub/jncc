<%--  
  Created by jncc hpf.  
  User: hpf  
  Date: 14-10-15  
  Time: 下午3:46  
  To change this template use File | Settings | File Templates.  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
	function CheckForm() {

		if (document.userinfo.username.value == "") {
			alert("请输入姓名,姓名不能为空！");
			document.userinfo.username.focus();
			return false;
		}
		if (document.userinfo.username.value.length > 10) {
			alert("输入的姓名长度最多为10个字符！");
			document.userinfo.username.focus();
			return false;
		}
	}
</script>
<script>
	$(document).ready(
			
			
			function() {
				$("#addUser").click(
						function() {// 必须先对提交表单数据数据进行序列化，采用jQuery的serialize()方法
							var params = $("#subUserForm").fixedSerialize();							
							
							$.ajax({
								url : 'user/add_user.action',
								type : 'post',
								data : params,
								dataType : 'json',
								success : function(data) {
									$(data.userList).each(
											function(i, value) {
												$("#allUser").append(
														"<div>输出了：id:"
																+ value.id
																+ ", name: "
																+ value.name
																+ "</div>");
											});

								}
							});
						});
			});
</script>

<div style="clear:both;height:8px;background-color: transparent;"></div>

<div class="signupFrame" style="marginleft:0 auto;width:450px;">
	<br>
	<table bordercolorlight="#000000" cellspacing="0" id="table1"
		height="358" cellpadding="0">
		<form id="subUserForm">
			<tr>
				<th colspan="2" height="37">
					<p align="center">
						New to jnccClub? &nbsp;&nbsp;<font color="blue"> Signup to
							join us!</font>
					</p>
				</th>
			</tr>
			<tr>
				<td width="37%" align="right">Username：</td>
				<td width="61%"><input type="text" name="username" value="jncc"
					size="13"></td>
			</tr>
			<tr>
				<td width="37%" align="right">Realname：</td>
				<td width="61%"><input type="text" name="realname"
					value="计算中心俱乐部" size="13"></td>
			</tr>
			<tr>
				<td width="37%" align="right">Password：</td>
				<td width="61%"><input type="password" name="userPassword"
					size="20" value="jncc"></td>
			</tr>
			<tr>
				<td width="37%" align="right">Sex：</td>
				<td width="61%"><input type="radio" value="True" checked
					name="Sex">男 <input type="radio" name="Sex" value="False">女</td>
			</tr>
			<tr>
				<td width="37%" align="right">Birth：</td>
				<td width="61%"><input type="text" name="userBirth"
					id="timeBirth" onclick="MyCalendar.SetDate(this)"
					value="1990-01-01" /></td>
			</tr>
			<tr>
				<td width="37%" align="right">SchoolNo：</td>
				<td width="61%"><input type="text" name="userNo" size="9"
					value="161210327"></td>
			</tr>
			<tr>
				<td width="37%" align="right">PhoneNo：</td>
				<td width="61%"><input type="text" name="userPhone" size="9"
					value="13888888888"></td>
			</tr>
			<tr>
				<td width="37%" align="right">Email：</td>
				<td width="61%"><input type="text" name="userMail" size="9"
					value="zhuhaohan@nuaa.edu.cn"></td>
			</tr>
			<tr>
				<td width="37%" align="right">QQ：</td>
				<td width="61%"><input type="text" name="userQQ" size="9"
					value="825857104"></td>
			</tr>
			<tr>
				<td width="37%" align="right">Preference：</td>
				<td width="61%"><input type="checkbox" name="userGift"
					value="HTML" checked>Html&nbsp; <input type="checkbox"
					name="userGift" value="CSS" checked>CSS&nbsp;<input
					type="checkbox" name="userGift" value="JSP">JSP&nbsp;<input
					type="checkbox" name="userGift" value="SERVER">SERVER&nbsp;
					<input type="checkbox" name="userGift" value="UCD" checked>UCD</td>
			</tr>
			<tr>
				<td width="37%" align="right">Hobbies：</td>
				<td width="40%"><select size="1" name="userHobby">
						<option selected value="javaDev">JAVA开发</option>
						<option value="cplusplusDev">C++开发</option>
						<option value="pageDev">网页语言</option>
				</select></td>
			</tr>
			<tr>
				<td width="37%" align="right">Self-introduce：</td>
				<td width="61%"><textarea rows="9" name="userGrjs" cols="34"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" height="38">
					<p align="center">
						<input type="submit" value="Signup" name="B1" id="addUser">
						<input type="reset" value="Reset" name="B2">
					</p>
				</td>
			</tr>
		</form>
	</table>
</div>

