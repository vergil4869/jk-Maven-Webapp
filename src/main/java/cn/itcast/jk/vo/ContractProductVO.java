package cn.itcast.jk.vo;

import java.util.List;

import cn.itcast.jk.domain.Contract;
import cn.itcast.jk.domain.ExtCproduct;
import cn.itcast.jk.domain.Factory;

/**
 * @Description: 代表着 货物信息 的类
 * @Author: Vergil
 * @Company: http://java.itcast.cn
 * @CreateDate: Jan 1, 2022
 */
public class ContractProductVO {
	private String id;
 	
	/**
	 * 关联关系的表(外键), 都成为普通字段
	 * 将本来复杂的关联关系, 变成一张单表操作, 这个类里面都是普通字段
	 * 
	 * myBatis之所以比Hibernate快, 是因为它能直接操作sql
	 * 语句
	 * Hibernate是纯面向对象, 
	 * 而MyBatis不是面向对象, 它是面向结果集
	 * 
	 * 我面向对象的快, 还是作为一个简单字段的快? 简单字段快
	 */
	private Contract contract;//如果这里用的是Hibernate技术, 我会毫不犹豫地选则这种写法
	private List<ExtCproductVO> extCproducts;//和附件一对多
	private Factory factory;//和生产厂家多对一
	
//	private String factoryName;//这个冗余字段就不需要了
	private String productNo;
	private String productImage;
	private String productDesc;
	private Integer cnumber;
	private Integer outNumber;
	private String loadingRate;//装率
	private Integer boxNum;//箱数
	private String packingUnit;//包装单位
	private Double price;
	private Double amount;
	private Integer finished;
	private String exts;
	private Integer orderNo;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public Integer getCnumber() {
		return cnumber;
	}
	public void setCnumber(Integer cnumber) {
		this.cnumber = cnumber;
	}
	public Integer getOutNumber() {
		return outNumber;
	}
	public void setOutNumber(Integer outNumber) {
		this.outNumber = outNumber;
	}
	public String getLoadingRate() {
		return loadingRate;
	}
	public void setLoadingRate(String loadingRate) {
		this.loadingRate = loadingRate;
	}
	public Integer getBoxNum() {
		return boxNum;
	}
	public void setBoxNum(Integer boxNum) {
		this.boxNum = boxNum;
	}
	public String getPackingUnit() {
		return packingUnit;
	}
	public void setPackingUnit(String packingUnit) {
		this.packingUnit = packingUnit;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public Integer getFinished() {
		return finished;
	}
	public void setFinished(Integer finished) {
		this.finished = finished;
	}
	public String getExts() {
		return exts;
	}
	public void setExts(String exts) {
		this.exts = exts;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Contract getContract() {
		return contract;
	}
	public void setContract(Contract contract) {
		this.contract = contract;
	}
	public List<ExtCproductVO> getExtCproducts() {
		return extCproducts;
	}
	public void setExtCproducts(List<ExtCproductVO> extCproducts) {
		this.extCproducts = extCproducts;
	}
	public Factory getFactory() {
		return factory;
	}
	public void setFactory(Factory factory) {
		this.factory = factory;
	}

}
