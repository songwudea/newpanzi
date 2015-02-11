package com.panzi.repository.Dao;

import java.util.List;

import com.panzi.modules.User;
import com.panzi.repository.JdbcEntityDao;

public class UserDao extends JdbcEntityDao<User, Integer> {

	public List<User> findBrands(Integer cid) {
		StringBuffer sb = new StringBuffer();
		sb.append(" select * from user where user.id = 0 or id = '");
		sb.append(cid);
		sb.append("' ");
		return this.find(sb.toString());
	}
	
}
