package com.kgc.bbs.controller;

import com.kgc.bbs.beans.BbsDetail;
import com.kgc.bbs.beans.BbsSort;
import com.kgc.bbs.service.BbsDetailService;
import com.kgc.bbs.service.BbsSortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

/**
 * @author jialin
 */
@Controller
public class BbsDetailController {
    @Autowired
    private BbsDetailService bbsDetailService;
    @Autowired
    private BbsSortService bbsSortService;

    /**
     * 显示列表
     * @param map
     * @param request
     * @return
     */
    @RequestMapping("/bbsList")
    public String bbsList(Map<String,Object> map, HttpServletRequest request){
        //获取下拉列表的分类
        List<BbsSort> bbsSorts = bbsSortService.queryAllSort();
        map.put("bbsSorts",bbsSorts);
        String aSortId = request.getParameter("sortId");
        String sortId = aSortId == null ? "0":aSortId;
        List<BbsDetail> bbsDetails = bbsDetailService.queryBbsDetails(Integer.valueOf(sortId));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (BbsDetail bbsDetail : bbsDetails) {
            String date = sdf.format(bbsDetail.getCreateDate());
            bbsDetail.setBbsDate(date);
        }
        map.put("bbsDetails",bbsDetails);
        return "BbsList";
    }

    /**
     * 跳转到添加界面
     * @param map
     * @return
     */
    @RequestMapping("/toAddDetail")
    public String toAddDetail(Map<String,Object> map){
        //获取下拉列表的分类
        List<BbsSort> bbsSorts = bbsSortService.queryAllSort();
        map.put("bbsSorts",bbsSorts);
        return "BbsAdd";
    }

    /**
     * 添加操作
     * @param bbsDetail
     * @return
     */
    @ResponseBody
    @RequestMapping("/addBbsDetail")
    public boolean addBbsDetail(BbsDetail bbsDetail){
        int row = bbsDetailService.addBbsDetail(bbsDetail);
        if (row > 0){
            return true;
        }
        return false;
    }

    @ResponseBody
    @RequestMapping("/addTitle")
    public boolean addTitle(HttpServletRequest request){
        BbsDetail bbsDetail = bbsDetailService.queryAddTitle(request.getParameter("title"));
        if (bbsDetail == null){
            return true;
        }
        return false;
    }

    /**
     * 跳转到查看页面
     * @param request
     * @param map
     * @return
     */
    @RequestMapping("/toShowBbs")
    public String toShowBbs(HttpServletRequest request,Map<String,Object> map){
        //传 bbsDetail
        Integer bbsId = Integer.valueOf(request.getParameter("id"));
        List<BbsDetail> bbsDetails = bbsDetailService.querySortByBbsId(bbsId);
        BbsDetail bbsDetail = bbsDetails.get(0);
        map.put("bbsDetail",bbsDetail);
        //传 区域
        BbsSort bbsSort = bbsSortService.querySortById(bbsDetail.getSortId());
        map.put("bbsSorts",bbsSort);
        //浏览次数+1
        bbsDetailService.addCount(bbsDetail);
        return "BbsShow";
    }
    @RequestMapping("/delBbs")
    public String delBbs(HttpServletRequest request){
        Integer bbsId = Integer.valueOf(request.getParameter("id"));
        bbsDetailService.delBbs(bbsId);
        return "redirect:/bbsList";
    }
}
