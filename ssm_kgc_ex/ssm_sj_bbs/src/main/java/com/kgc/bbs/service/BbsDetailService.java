package com.kgc.bbs.service;

import com.kgc.bbs.beans.BbsDetail;

import java.util.List;

/**
 * @author jialin
 */
public interface BbsDetailService {
    List<BbsDetail> queryBbsDetails(Integer sortId);
    List<BbsDetail> querySortByBbsId(Integer bbsId);
    int updateBbsDetail(BbsDetail bbsDetail);
    int addBbsDetail(BbsDetail bbsDetail);
    BbsDetail queryAddTitle(String title);
    void addCount(BbsDetail bbsDetail);
    int delBbs(Integer id);
}
