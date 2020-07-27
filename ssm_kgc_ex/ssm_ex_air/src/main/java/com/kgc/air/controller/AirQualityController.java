package com.kgc.air.controller;

import com.kgc.air.beans.AirQuality;
import com.kgc.air.beans.District;
import com.kgc.air.service.AirQualityService;
import com.kgc.air.service.DistrictService;
import com.kgc.air.utils.PageSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author jialin
 */
@Controller
public class AirQualityController {
    @Autowired
    private AirQualityService airQualityService;
    @Autowired
    private DistrictService districtService;
    /**
     * 查询空气质量检测的列表
     * @param map
     * @param request
     * @return
     */
    @RequestMapping("/airQualityList")
    public String airQualityList(Map<String,Object> map, HttpServletRequest request){
        //获取所有区域列表
        List<District> Districts = districtService.selectAirQualityList();
        map.put("districts", Districts);
        //获取查询的区域编号
        String districtId = request.getParameter("districtId") == null ? "0" : request.getParameter("districtId");
        //获取对应区域的所有数据列表
        List<AirQuality> airQualities = airQualityService.queryAirQualityList(Integer.valueOf(districtId));
        System.err.println(airQualities);
        map.put("airQualities",airQualities);
        return "airQualityList";
    }

    /**
     * 跳转到更新
     * @param request
     * @param map
     * @return
     */
    @RequestMapping("/toUpdateAirQuality")
    public String toUpdateAirQuality(HttpServletRequest request,Map<String,Object> map){
        String ids = request.getParameter("id");
        Integer id = Integer.valueOf(ids);
        String disId = request.getParameter("ids");
        Integer districtId = Integer.valueOf(disId);
        District dist = districtService.queryDistrictById(districtId);
        map.put("distID",dist);
        List<District> districts = districtService.selectAirQualityList();
        map.put("districts",districts);
        AirQuality airQuality = airQualityService.queryAirQualityById(id);
        map.put("airQuality",airQuality);
        return "updateInfo";
    }
    @RequestMapping("/toUpdateAirQuality2")
    public String toUpdateAirQuality2(HttpServletRequest request,Map<String,Object> map){
        String ids = request.getParameter("id");
        Integer id = Integer.valueOf(ids);
        String disId = request.getParameter("ids");
        Integer districtId = Integer.valueOf(disId);
        District dist = districtService.queryDistrictById(districtId);
        map.put("distID",dist);
        List<District> districts = districtService.selectAirQualityList();
        map.put("districts",districts);
        //查询空气质量详情
        AirQuality airQuality = airQualityService.queryAirQualityById(id);
        map.put("airQuality",airQuality);
        return "updateInfo2";
    }

    /**
     * 更新
     * @param request
     * @param airQuality
     * @return
     * @throws ParseException
     */
    @RequestMapping("/updateAirQuality")
    public String updateAirQuality(HttpServletRequest request,AirQuality airQuality) throws ParseException {
        String moniTime = request.getParameter("monitorTime1");
        Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(moniTime);
        airQuality.setMonitorTime(date1);
        String moningTime = request.getParameter("lastModifyTime1");
        Date date2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(moningTime);
        airQuality.setLastModifyTime(date2);
        airQualityService.updateAirQuality(airQuality);
        return "redirect:/airQualityListPage";
    }

    @ResponseBody
    @RequestMapping(value = "/updateAirQuality2",method = RequestMethod.POST)
    public boolean updateAirQuality2(AirQuality airQuality,HttpServletRequest request) throws ParseException {
        String monTime = request.getParameter("monitorTime1");
        Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(monTime);
        airQuality.setMonitorTime(date1);
        String moNTime = request.getParameter("lastModifyTime1");
        Date date2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(moNTime);
        airQuality.setLastModifyTime(date2);
        System.err.println("更新操作啊："+airQuality);
        //更新
        int row = airQualityService.updateAirQuality(airQuality);
        if (row > 0){
            System.err.println("row "+row);
            return true;
        }
        return false;
    }

    /**
     * 去添加页面
     * @param map
     * @return
     */
    @RequestMapping("/toAddAirQuality")
    public String toAddAirQuality(Map<String,Object> map){
        List<District> districts = districtService.selectAirQualityList();
        map.put("districts",districts);
        return "addInfo";
    }
    @RequestMapping(value = "/toAddAirQuality2",method = RequestMethod.GET)
    public String toAddAirQuality2(Map<String,Object> map){
        List<District> districts = districtService.selectAirQualityList();
        map.put("districts",districts);
        return "addInfo2";
    }
    /**
     * 添加操作
     * @param airQuality
     * @param request
     * @return
     * @throws ParseException
     */
    @RequestMapping("/addAirQuality")
    public String addAirQuality(AirQuality airQuality,HttpServletRequest request) throws ParseException {
        String moniTime = request.getParameter("monitorTime1");
        Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(moniTime);
        airQuality.setMonitorTime(date1);
        String moningTime = request.getParameter("lastModifyTime1");
        Date date2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(moningTime);
        airQuality.setLastModifyTime(date2);
        airQualityService.addAirQuality(airQuality);
        return "redirect:/airQualityListPage";
    }
    @ResponseBody  //值转化为json
    @RequestMapping(value = "/addAirQuality2",method = RequestMethod.POST)
    public boolean addAirQuality2(AirQuality airQuality,HttpServletRequest request) throws ParseException {
        String moniTime = request.getParameter("monitorTime1");
        Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(moniTime);
        airQuality.setMonitorTime(date1);
        //添加
        int row = airQualityService.addAirQuality2(airQuality);
        if (row > 0){
            System.err.println("row "+row);
            return true;
        }
        return false;
    }

    /**
     * 删除
     * @param request
     * @return
     */
    @RequestMapping("/delAirQuality")
    public String delAirQuality(HttpServletRequest request){
        String ids = request.getParameter("id");
        airQualityService.delAirQuality(Integer.valueOf(ids));
        return "redirect:/airQualityListPage";
    }

    /**
     * 分页查询信息
     * @return
     */
    @RequestMapping("/airQualityListPage")
    public String airQualityListPage(String pageSizes, String pageNo, String goPageNo, Model model,HttpServletRequest request){
        //获取当前页面的分页数据
        //1.页面容量
        String pageSizeStr = pageSizes;
        //2.当前页码
        String pageNoStr = pageNo;
        //3.跳转页码
        String goPageNoStr= goPageNo;
        //4.默认值处理
        int pageSize = (null==pageSizeStr || pageSizeStr.equals("") ? 6 : Integer.parseInt(pageSizeStr));
        int pageNos = (null==pageNoStr || pageNoStr.equals("") ? 1 : Integer.parseInt(pageNoStr));
        //如果按照页码跳转，pageNo为跳转页码
        if (null != goPageNoStr && goPageNoStr.equals("")) {
            pageNos = Integer.parseInt(goPageNoStr);
        }
        //获取所有的总条数
        int totalCount = airQualityService.getToalCount();

        //
        PageSupport pageSupport = new PageSupport();
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);

        //页码处理
        int totalPage = pageSupport.getTotalPage();
        if (pageNos<1) {
            pageNos=1;
        }else if (pageNos > totalPage) {
            pageNos = totalPage;
        }
        System.out.println("分几页："+totalPage);
        System.out.println("每页几个："+pageSize);
        pageSupport.setCurrentPageNo(pageNos);

        //根据分页数据获取对应列表
        //List<AirQuality> airQualities = airQualityService.getAirQualityListPage((pageNos-1)*pageSize,pageSize);

        //返回页面显示
       // model.addAttribute("airQualities", airQualities);
        model.addAttribute("page", pageSupport);

        //获取所有区域列表
        List<District> Districts = districtService.selectAirQualityList();
        model.addAttribute("districts", Districts);

        //获取查询的区域编号
        String districtId = request.getParameter("districtId") == null ? "0" : request.getParameter("districtId");
        //获取对应区域的所有数据列表
        List<AirQuality> airQualities = airQualityService.queryAirQualityList2(Integer.valueOf(districtId),(pageNos-1)*pageSize,pageSize);
        for (AirQuality airQuality : airQualities) {
            SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
            airQuality.setMoniTime(fmt.format(airQuality.getMonitorTime()));
        }
        model.addAttribute("airQualities", airQualities);
        return "airQualityList";
    }
}
