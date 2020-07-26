package com.kgc.bbs.service;

import com.kgc.bbs.beans.BbsDetail;

import java.util.List;

/**
 * @author jialin
 */
public interface BbsDetailService {
    List<BbsDetail> queryBbsDetails(Integer sortId);
    int updateBbsDetail(BbsDetail bbsDetail);
    int addBbsDetail(BbsDetail bbsDetail);
}
