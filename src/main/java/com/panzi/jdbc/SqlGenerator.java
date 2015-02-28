package com.panzi.jdbc;

import com.panzi.jdbc.sqlgenerator.metadata.Table;


public interface SqlGenerator {

	public String getInsertSql();

	public String getUpdateByPkSql();

	public String getDeleteByPkSql();

	public String getSelectByPkSql();

	public String getColumnsSql();

	public String getColumnsSql(String columnPrefix);

	public Table getTable();
}
