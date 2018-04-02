package com.cxgc.news_app.core.mapper.managerment_system_mapper;

import com.cxgc.news_app.core.model.Authorities;
import com.cxgc.news_app.core.model.Groups;

import java.util.List;

/**
 * @author 上官炳强
 * @Date 2018-03-22 / 09:13:05
 * @Version
 * @Description
 */
public interface GroupDao {

    Groups getGroupById(String id);
    List<Authorities> getAuthoritiesByGroupId(String id);
    List<Groups> getAllGroups();

}
