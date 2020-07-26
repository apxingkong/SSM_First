package com.xing.mapper;

import com.xing.pojo.Books;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;

/**
 * @author jialin
 */
public class BookMapperImpl extends SqlSessionDaoSupport implements BookMapper{

    @Override
    public List<Books> queryAllBook() {
        BookMapper mapper = getSqlSession().getMapper(BookMapper.class);
        return mapper.queryAllBook();
    }
}
