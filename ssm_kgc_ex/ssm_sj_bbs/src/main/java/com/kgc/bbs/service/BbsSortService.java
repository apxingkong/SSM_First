package com.kgc.bbs.service;

import com.kgc.bbs.beans.BbsSort;

import java.util.List;

/**
 * @author jialin
 */
public interface BbsSortService {
    List<BbsSort> queryAllSort();
    BbsSort querySortById(Integer id);
}
