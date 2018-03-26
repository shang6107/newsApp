package com.cxgc.news_app.utility;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 上官炳强
 * @Date 2018-03-26 / 05:10:29
 * @Version
 * @Description
 */
public class EnumUtil<E extends BaseEnum> extends BaseTypeHandler<E> {

    public EnumUtil() {
    }

    private Class<E> type;
    private E[] enums;

    public EnumUtil(Class<E> type, E[] enums) {
        if (type == null)
            throw new IllegalArgumentException("Type argument cannot be null");
        this.type = type;
        this.enums = type.getEnumConstants();
        if (this.enums == null)
            throw new IllegalArgumentException(type.getSimpleName()
                    + " does not represent an enum type.");

    }

    @Override
    public void setNonNullParameter(PreparedStatement preparedStatement, int i, E e, JdbcType jdbcType) throws SQLException {
        preparedStatement.setObject(i, (Integer)e.getStatus(), jdbcType.TYPE_CODE);
    }

    @Override
    public E getNullableResult(ResultSet resultSet, String s) throws SQLException {
        Integer i = resultSet.getInt(s);
        if (resultSet.wasNull()) {
            return null;
        } else {
            // 根据数据库中的value值，定位PersonType子类
            return locateEnumStatus(i);
        }

    }

    @Override
    public E getNullableResult(ResultSet resultSet, int i) throws SQLException {
        Integer s = resultSet.getInt(i);
        if (resultSet.wasNull()) {
            return null;
        } else {
            // 根据数据库中的value值，定位PersonType子类
            return locateEnumStatus(s);
        }

    }

    @Override
    public E getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        Integer s = callableStatement.getInt(i);
        if (callableStatement.wasNull()) {
            return null;
        } else {
            // 根据数据库中的value值，定位PersonType子类
            return locateEnumStatus(s);
        }
    }

    private E locateEnumStatus(Integer value) {
        for (E e : enums) {
            if (e.getStatus().equals(value)) {
                return e;
            }
        }
        throw new IllegalArgumentException("未知的枚举类型：" + value + ",请核对" + type.getSimpleName());
    }


}
