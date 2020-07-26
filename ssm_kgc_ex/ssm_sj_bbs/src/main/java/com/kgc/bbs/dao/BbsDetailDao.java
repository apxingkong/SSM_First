package com.kgc.bbs.dao;

import com.kgc.bbs.beans.BbsDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jialin
 */
public interface BbsDetailDao {
    List<BbsDetail> queryBbsDetails(@Param("sortId") Integer sortId);
    int updateBbsDetail(BbsDetail bbsDetail);
    int addBbsDetail(BbsDetail bbsDetail);
}
