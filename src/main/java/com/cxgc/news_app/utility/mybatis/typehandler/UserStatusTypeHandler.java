package com.cxgc.news_app.utility.mybatis.typehandler;

import com.cxgc.news_app.common.UserStatus;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 上官炳强
 * @Date 2018-03-27 / 09:06:36
 * @Version
 * @Description
 */
public class UserStatusTypeHandler implements TypeHandler<UserStatus>{

    @Override
    public void setParameter(PreparedStatement preparedStatement, int i, UserStatus userStatus, JdbcType jdbcType) throws SQLException {
        
    }

    @Override
    public UserStatus getResult(ResultSet resultSet, String s) throws SQLException {

        return UserStatus.getUserStatusByStatus(resultSet.getInt(s));
    }

    @Override
    public UserStatus getResult(ResultSet resultSet, int i) throws SQLException {

        return UserStatus.getUserStatusByStatus(resultSet.getInt(i));
    }

    @Override
    public UserStatus getResult(CallableStatement callableStatement, int i) throws SQLException {
        return UserStatus.getUserStatusByStatus(callableStatement.getInt(i));
    }
}
