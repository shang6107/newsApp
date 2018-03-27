package com.cxgc.news_app.utility.mybatis.typehandler;

import com.cxgc.news_app.common.UserType;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 上官炳强
 * @Date 2018-03-27 / 10:21:42
 * @Version
 * @Description
 */
public class UserTypeHandler implements TypeHandler<UserType> {
    @Override
    public void setParameter(PreparedStatement preparedStatement, int i, UserType userType, JdbcType jdbcType) throws SQLException {
        preparedStatement.setString(i,userType.getType());
    }

    @Override
    public UserType getResult(ResultSet resultSet, String s) throws SQLException {
        return UserType.getUserTypeByType(resultSet.getString(s));
    }

    @Override
    public UserType getResult(ResultSet resultSet, int i) throws SQLException {
        return UserType.getUserTypeByType(resultSet.getString(i));
    }

    @Override
    public UserType getResult(CallableStatement callableStatement, int i) throws SQLException {
        return UserType.getUserTypeByType(callableStatement.getString(i));
    }
}
