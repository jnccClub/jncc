package org.jncc.action.user;

import org.jncc.base.cause.resultCause;
import org.jncc.base.user.UserInfo;
import org.jncc.base.user.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserService us = new UserService();
	private resultCause resultCause = new resultCause();



	public resultCause getResultCause() {
		return resultCause;
	}


	public void setResultCause(resultCause resultCause) {
		this.resultCause = resultCause;
	}


	public String addUser() {
		/*
		 * userInfo = new UserInfo(); userInfo.setId(7); userInfo.setName("张7");
		 */

		// 如果是异步提交json格式，必须先在js中对提交的表单form进行序列化
		// var params = $("subUserForm").serialize();
//		us.addUser(userInfo);
		System.out.println("comehere!!!!! ohyeah");
		resultCause.setResultCode("200 OK");
		resultCause.setResultDesc("test");
		return "ADD_SUCCESS";
	}


	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	private UserInfo userInfo;
}
