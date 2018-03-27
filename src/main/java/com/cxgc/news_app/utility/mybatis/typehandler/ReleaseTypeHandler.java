package com.cxgc.news_app.utility.mybatis.typehandler;

import com.cxgc.news_app.common.ReleaseStatus;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 上官炳强
 * @Date 2018-03-27 / 10:05:16
 * @Version
 * @Description
 */
public class ReleaseTypeHandler implements TypeHandler<ReleaseStatus> {
    @Override
    public void setParameter(PreparedStatement preparedStatement, int i, ReleaseStatus releaseStatus, JdbcType jdbcType) throws SQLException {

    }

    @Override
    public ReleaseStatus getResult(ResultSet resultSet, String s) throws SQLException {
        return ReleaseStatus.getReleaseStatusByStatus(resultSet.getInt(s));
    }

    @Override
    public ReleaseStatus getResult(ResultSet resultSet, int i) throws SQLException {
        return ReleaseStatus.getReleaseStatusByStatus(resultSet.getInt(i));
    }

    @Override
    public ReleaseStatus getResult(CallableStatement callableStatement, int i) throws SQLException {
        return ReleaseStatus.getReleaseStatusByStatus(callableStatement.getInt(i));
    }
}
