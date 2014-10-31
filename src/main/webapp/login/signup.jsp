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
	function invalidUsername(username) {
		if (username == null || username.length == 0) {
			$("#nameValidate").html("姓名不能为空！");
			return true;
		}
		if (username.length > 10) {
			$("#nameValidate").html("长度最多为10个字符！");
			return true;
		}
		return false;
	}
</script>
<script>
	$(document).ready(function() {
		$("#addUser").click(function() {// 必须先对提交表单数据数据进行序列化，采用jQuery的serialize()方法
			var checkboxNameList = new Array();
			checkboxNameList[0] = "userGift";
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
		$("input[name='userInfo.username']").blur(function() {// 必须先对提交表单数据数据进行序列化，采用jQuery的serialize()方法
			var params = $(this).serializeArray();
			if (invalidUsername($(this).val().trim())) {
				$("#nameValidate").removeClass().addClass("signup_errTips");
				$("#nameValidate").show();
				return false;
			}
			$.ajax({
				url : 'user/user_checkUsername.action',
				type : 'post',
				data : params,
				dataType : 'json',
				success : function(data) {
					if (data.resultCode.toString() == "200") {
						$("#nameValidate").removeClass().addClass("signup_correctTips");
						$("#nameValidate").html("恭喜，用户名可用");
					} else {
						$("#nameValidate").removeClass().addClass("signup_errTips");
						$("#nameValidate").html("用户名已经注册");
					}
					$("#nameValidate").show();
				}
			});
		});
		function loadingShow() {
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
				<td>学号/工号：</td>
				<td><input type="text" name="userInfo.username" size="13"
					placeholder='学号/工号'></td>
				<td id="nameValidate" style="display:none"></td>
			</tr>

			<tr>
				<td>Realname：</td>
				<td><input type="text" name="userInfo.realname"
					placeholder="真实姓名" size="13"></td>
			</tr>

			<tr>
				<td>Password：</td>
				<td><input type="password" name="userInfo.password" size="20"
					placeholder="请输入密码"></td>
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
		<!-- 
			<tr>
				<td>SchoolNo：</td>
				<td><input type="text" name="userInfo.schoolno" size="9"
					placeholder="161210327"></td>
			</tr>
		 -->
			<tr>
				<td>PhoneNo：</td>
				<td><input type="text" name="userInfo.phoneno" size="9"
					placeholder="13888888888"></td>
			</tr>
			<tr>
				<td>Email：</td>
				<td><input type="text" name="userInfo.email" size="9"
					placeholder="zhuhaohan@nuaa.edu.cn"></td>
			</tr>
			<tr>
				<td>QQ：</td>
				<td><input type="text" name="userInfo.qq" size="9"
					placeholder="825857104"></td>
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
				<td><textarea rows="3" name="userInfo.selfIntroduce" cols="55"
						placeholder='我爱北京天安门'></textarea></td>
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
		$("table tr").each(function() {
			//$("td:eq(0)").addClass("signupLabel");
			//$("td:eq(1)").addClass("signupInput");
			//$("td:eq(2)").addClass("signupTips");
			$(this).children("td:eq(0)").addClass("signupLabel");
			$(this).children("td:eq(1)").addClass("signupInput");
		});
	});
</script>
