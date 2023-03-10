<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
</head>
<body>
<form method="post">
<%-- 
<hr>
	<font color="blue"><b>隐藏区域</b></font>
<hr>
 --%>

	<input type="hidden" name="id" value="${obj.id}"/>

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('update.action','_self');">确定</a></li>
<li id="back"><a href="list.action">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
		修改购销合同信息
    </div> 
    </div>
    </div>
<div>
 
<!-- <hr> -->
<!-- 	<font color="blue"><b>内容区域，表格布局</b></font> -->
<!-- <hr> -->
 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle_mustbe">客户名称：</td>
	            <td class="tableContent"><input type="text" name="customName" value="${obj.customName}"/></td>
	            <td class="columnTitle_mustbe">收购方：</td>
	            <td class="tableContent"><input type="text" name="offeror" value="${obj.offeror}"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe">合同号：</td>
	            <td class="tableContent"><input type="text" name="contractNo" value="${obj.contractNo}"/></td>
	            <td class="columnTitle_mustbe">打印版式：</td>
	            <td class="tableContent">
	            	<input type="radio" name="printStyle" value="2" class="input" <c:if test="${obj.printStyle==2 }">checked</c:if> >两款
	            	<input type="radio" name="printStyle" value="1" class="input" ${obj.printStyle==1?'checked' : ''}>一款
	            </td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe">签单日期：</td>
	            <td class="tableContent"><input type="text" name="signingDate" style="width:90px;" 
	            	value="<fmt:formatDate value="${obj.signingDate}" pattern="yyyy/MM/dd"/>"
	            	onclick="WdatePicker({el:this, isShowOthers:true, dateFmt:'yyyy/MM/dd'});"/></td>
	            <td class="columnTitle_mustbe">重要程度：</td>
	            <td class="tableContent">
	            	<input type="radio" name="importNum" class="input" value="3" ${obj.importNum==3?'checked="checked"':'' }/>&#9733&#9733&#9733
	            	<input type="radio" name="importNum" class="input" value="2" ${obj.importNum==2?'checked="checked"':''}/>&#9733&#9733
	             	<input type="radio" name="importNum" class="input" value="1" ${obj.importNum==1?'checked="checked"':''}/>&#9733
	            </td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe">交货期限：</td>
	            <td class="tableContent"><input type="text" style="width:90px;" name="deliveryPeriod" 
	            	value="<fmt:formatDate value="${obj.deliveryPeriod}" pattern="yyyy/MM/dd"/>"
	            	onclick="WdatePicker({el:this, isShowOthers:true, dateFmt:'yyyy/MM/dd'});"/></td>
	            <td class="columnTitle_mustbe">船期：</td>
	            <td class="tableContent"><input type="text" style="width:90px;" name="shipTime" 
	            	value="<fmt:formatDate value="${obj.shipTime}" pattern="yyyy/MM/dd"/>" 
	            	onclick="WdatePicker({el:this, isShowOthers:true, dateFmt:'yyyy/MM/dd'});"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe">贸易条款：</td>
	            <td class="tableContent"><input type="text" name="tradeTerms" value="${obj.tradeTerms}"/></td>
	            <td class="columnTitle_mustbe">验货员：</td>
	            <td class="tableContent"><input type="text" name="inspector" value="${obj.inspector}"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe">制单人：</td>
	            <td class="tableContent"><input type="text" name="inputBy" value="${obj.inputBy}"/></td>
	            <td class="columnTitle_mustbe">审单人：</td>
	            <td class="tableContent"><input type="text" name="checkBy" value="${obj.checkBy}"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe">要求：</td>
	            <td class="tableContent"><textarea type="text" style="height:120px;" name="crequest">${obj.crequest}</textarea>
	            </td>
	            <td class="columnTitle_mustbe">说明：</td>
	            <td class="tableContent"><textarea type="text" style="height:120px;" name="remark">${obj.remark}</textarea>
	            </td>
	        </tr>
		</table>
	</div>
</div>
 
 
</form>
</body>
</html>

