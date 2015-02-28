package com.panzi.modules;

@SuppressWarnings("serial")
public class MenusParent extends BaseModules implements java.io.Serializable{
	
	public static final Integer IFDISPLAY_YES = 0;//是否显示或隐藏 0 显示
	
	public static final Integer IFDISPLAY_NO = 1;//是否显示或隐藏 1 不显示
	
	private Integer id;
	private String name;//标题名称
	private Integer sort;//排序
	private Integer ifDisplay;//是否显示或隐藏  1 不显示 0 显示
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public Integer getIfDisplay() {
		return ifDisplay;
	}
	public void setIfDisplay(Integer ifDisplay) {
		this.ifDisplay = ifDisplay;
	}
	
	

}
