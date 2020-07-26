package com.kgc.bbs.dao;

import com.kgc.bbs.beans.BbsSort;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jialin
 */
public interface BbsSortDao {
    //查询所有的分类
    List<BbsSort> queryAllSort();
    //根据id查询分类
    BbsSort querySortById(@Param("id") Integer id);
}
