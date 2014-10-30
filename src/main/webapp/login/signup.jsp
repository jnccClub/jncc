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

	function correctCheckboxJson(formID, checkboxNameList) {
		var paramArray = $("#" + formID).serializeArray();
		var paramSerialize = "";
		var lastFieldName = "";
		for (var i = 0; i < checkboxNameList.length; i++) {
			$.each(paramArray, function(i, field) {
				if ((lastFieldName != "") && (lastFieldName != field.name)) {
					paramSerialize += "&";
				}
				if (lastFieldName != field.name) {
					lastFieldName = field.name;
					paramSerialize += field.name;
					paramSerialize += "=";
					paramSerialize += field.value;
				} else {
					paramSerialize += ";";
					paramSerialize += field.value;
				}
			});
		}
		return paramSerialize;
	}
</script>
<script>
	$(document).ready(
			function() {
				$("#addUser").click(
						function() {// 必须先对提交表单数据数据进行序列化，采用jQuery的serialize()方法
							var checkboxNameList = new Array();
							checkboxNameList[0] = "userGift";
							//var params = correctCheckboxJson("subUserForm",checkboxNameList);
							//var params = $("#subUserForm").serialize();
							var params = $("#subUserForm").serializeArray();

							$.ajax({
								url : 'user/user_add.action',
								type : 'post',
								data : params,
								dataType : 'json',
								success : function(data) {
										alert("addUser happened!");
								}
							});
						});
				$("input[name='userInfo.username']").blur(
						function() {// 必须先对提交表单数据数据进行序列化，采用jQuery的serialize()方法
							var params = $("input[name='userInfo.username']").serializeArray();

							$.ajax({
								url : 'user/user_checkUsername.action',
								type : 'post',
								data : params,
								dataType : 'json',
								beforeSend: loadingShow,
								success : function(data) {
										alert("something happened!");
								}
							});
						});
				$("input[name='userInfo.realname']").blur(
						function() {// 必须先对提交表单数据数据进行序列化，采用jQuery的serialize()方法
							var params = $("input[name='userInfo.realname']").serializeArray();

							$.ajax({
								url : 'user/user_checkUsername',
								type : 'post',
								data : params,
								dataType : 'json',
								success : function(data) {
										alert("something happened!");
								}
							});
						});
				function loadingShow()
				{
					//$("#nameValidate").addClass("loadingIcon");
					$("#nameValidate").show();
				}
			});
</script>

<div style="clear:both;height:8px;background-color: transparent;"></div>

<div class="signupFrame">
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
				<td >Username：</td>
				<td><input type="text" name="userInfo.username" value="jncc"
					size="13"></td>
				<td id="nameValidate" style="display:none">姓名已注册</td>
				
			</tr>

			<tr>
				<td>Realname：</td>
				<td><input type="text" name="userInfo.realname"
					value="计算中心俱乐部" size="13"></td>
			</tr>

			<tr>
				<td>Password：</td>
				<td><input type="password" name="userInfo.password" size="20"
					value="jncc"></td>
			</tr>
			<tr>
				<td>Sex：</td>
				<td><input type="radio" value="male" checked
					name="userInfo.sex">男 <input type="radio"
					name="userInfo.sex" value="female">女</td>
			</tr>
			<tr>
				<td>Birth：</td>
				<td><input type="text" name="userInfo.birth" id="timeBirth"
					onclick="MyCalendar.SetDate(this)" value="1990-01-01" /></td>
			</tr>
			<tr>
				<td>SchoolNo：</td>
				<td><input type="text" name="userInfo.schoolno" size="9"
					value="161210327"></td>
			</tr>
			<tr>
				<td>PhoneNo：</td>
				<td><input type="text" name="userInfo.phoneno" size="9"
					value="13888888888"></td>
			</tr>
			<tr>
				<td>Email：</td>
				<td><input type="text" name="userInfo.email" size="9"
					value="zhuhaohan@nuaa.edu.cn"></td>
			</tr>
			<tr>
				<td>QQ：</td>
				<td><input type="text" name="userInfo.qq" size="9"
					value="825857104"></td>
			</tr>
			<tr>
				<td>Preference：</td>
				<td><input type="checkbox" name="userInfo.preference"
					value="HTML" checked>Html&nbsp; <input type="checkbox"
					name="userInfo.preference" value="CSS" checked>CSS&nbsp;<input
					type="checkbox" name="userInfo.preference" value="JSP">JSP&nbsp;<input
					type="checkbox" name="userInfo.preference" value="SERVER">SERVER&nbsp;
					<input type="checkbox" name="userInfo.preference" value="UCD"
					checked>UCD</td>
			</tr>
			<tr>
				<td>Hobbies：</td>
				<td><select size="1" name="userInfo.hobby">
						<option selected value="javaDev">JAVA开发</option>
						<option value="cplusplusDev">C++开发</option>
						<option value="pageDev">网页语言</option>
				</select></td>
			</tr>
			<tr>
				<td>Self-introduce：</td>
				<td><textarea rows="9" name="userInfo.selfIntroduce" cols="34"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" height="38">
					<p align="center">
						<input type="submit" value="Signup" id="addUser"> <input
							type="reset" value="Reset">
					</p>
				</td>
			</tr>
		</form>
	</table>
</div>
<script>
	$(document).ready(function() {
		$("table tr").each(function(){
			//$("td:eq(0)").addClass("signupLabel");
			//$("td:eq(1)").addClass("signupInput");
			//$("td:eq(2)").addClass("signupTips");
			$(this).children("td:eq(0)").addClass("signupLabel");
			$(this).children("td:eq(1)").addClass("signupInput");
			$(this).children("td:eq(2)").addClass("signupTips");
		});
	});
</script>
