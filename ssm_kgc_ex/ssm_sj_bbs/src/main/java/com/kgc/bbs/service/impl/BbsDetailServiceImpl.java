package com.kgc.bbs.service.impl;

import com.kgc.bbs.beans.BbsDetail;
import com.kgc.bbs.dao.BbsDetailDao;
import com.kgc.bbs.service.BbsDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jialin
 */
@Service
public class BbsDetailServiceImpl implements BbsDetailService {
    @Autowired
    private BbsDetailDao bbsDetailDao;

    @Override
    public List<BbsDetail> queryBbsDetails(Integer sortId) {
        return bbsDetailDao.queryBbsDetails(sortId);
    }

    @Override
    public List<BbsDetail> querySortByBbsId(Integer bbsId) {
        return bbsDetailDao.querySortByBbsId(bbsId);
    }

    @Override
    public int updateBbsDetail(BbsDetail bbsDetail) {
        return bbsDetailDao.updateBbsDetail(bbsDetail);
    }

    @Override
    public int addBbsDetail(BbsDetail bbsDetail) {
        return bbsDetailDao.addBbsDetail(bbsDetail);
    }

    @Override
    public BbsDetail queryAddTitle(String title) {
        return bbsDetailDao.queryAddTitle(title);
    }

    @Override
    public void addCount(BbsDetail bbsDetail) {
        bbsDetailDao.addCount(bbsDetail);
    }

    @Override
    public int delBbs(Integer id) {
        return bbsDetailDao.delBbs(id);
    }
}
