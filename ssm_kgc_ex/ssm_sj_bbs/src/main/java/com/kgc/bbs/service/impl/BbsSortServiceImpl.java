package com.kgc.bbs.service.impl;

import com.kgc.bbs.beans.BbsSort;
import com.kgc.bbs.dao.BbsSortDao;
import com.kgc.bbs.service.BbsSortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jialin
 */
@Service
public class BbsSortServiceImpl implements BbsSortService {
    @Autowired
    private BbsSortDao bbsSortDao;
    @Override
    public List<BbsSort> queryAllSort() {
        return bbsSortDao.queryAllSort();
    }

    @Override
    public BbsSort querySortById(Integer id) {
        return bbsSortDao.querySortById(id);
    }
}
