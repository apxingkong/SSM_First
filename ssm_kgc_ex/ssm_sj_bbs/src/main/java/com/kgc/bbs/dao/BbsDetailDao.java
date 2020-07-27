package com.kgc.bbs.dao;

import com.kgc.bbs.beans.BbsDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jialin
 */
public interface BbsDetailDao {
    List<BbsDetail> queryBbsDetails(@Param("sortId") Integer sortId);
    List<BbsDetail> querySortByBbsId(@Param("bbsId") Integer bbsId);
    int updateBbsDetail(BbsDetail bbsDetail);
    int addBbsDetail(BbsDetail bbsDetail);
    BbsDetail queryAddTitle(@Param("title") String title);
    void addCount(BbsDetail bbsDetail);

    int delBbs(@Param("id") Integer id);
}
