package com.xing.mapper;

import com.xing.pojo.Books;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;

/**
 * @author jialin
 */
public class UserMapperImpl implements UserMapper{
    //我们的所有操作都使用sqlsession来执行原来，现在是sqlsessionTemplate
    private SqlSessionTemplate sessionTemplate;

    public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
        this.sessionTemplate = sessionTemplate;
    }

    @Override
    public List<Books> queryAllBook() {
        UserMapper mapper = sessionTemplate.getMapper(UserMapper.class);
        return mapper.queryAllBook();
    }
}
