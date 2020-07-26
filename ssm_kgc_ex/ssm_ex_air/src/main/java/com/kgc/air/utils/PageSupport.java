package com.kgc.air.utils;

/**
 * @author jialin
 */
public class PageSupport {
    //总条数
    private  int totalCount;
    //当前页面
    private  int currentPageNo;
    //页面容量
    private  int pageSize;
    private  int totalPage;
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        //总条数确定，页面容量有，可以确定总页数
        if (this.totalCount % this.pageSize == 0) {
            this.totalPage = this.totalCount / this.pageSize;
        }else{
            this.totalPage = this.totalCount / this.pageSize +1;
        }
    }
    public int getCurrentPageNo() {
        return currentPageNo;
    }
    public void setCurrentPageNo(int currentPageNo) {
        this.currentPageNo = currentPageNo;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public int getTotalPage() {
        return totalPage;
    }
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    @Override
    public String toString() {
        return "PageSupport [totalCount=" + totalCount + ", currentPageNo=" + currentPageNo + ", pageSize=" + pageSize
                + ", totalPage=" + totalPage + "]";
    }


}
