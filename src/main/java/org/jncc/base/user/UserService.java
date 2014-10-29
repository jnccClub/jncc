package org.jncc.base.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jncc.action.Db;
import org.jncc.persistence.dbSession;

public class UserService {

	public List<UserInfo> getUser() {
		Connection conn = Db.createConnection();

		UserInfo userInfo = null;
		List<UserInfo> users = new ArrayList<UserInfo>();
		
		
		
		return users;
	}

	public void addUser(UserInfo userInfo) {
		dbSession.init();
		
	}
}