﻿<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" 
			+ request.getServerPort() + request.getContextPath() %>/" />
    <link rel="stylesheet" type="text/css" href="css_files/personal.css" />
	<link rel="stylesheet" type="text/css" href="css_files/form.css" />
	<link rel="stylesheet" type="text/css" href="css_files/pcenter/modify_enterprise.css" />
    <script type="text/javascript" src="js/jquery/jquery.js"></script>
    <script type="text/javascript" src="js/ajaxfileupload.js"></script>
    <script type="text/javascript" src="js/local_preview.js"></script>
    <script type="text/javascript" src="js/pcenter/modify_enterprise_validation.js"></script>
	<script type="text/javascript" src="js/image_auto_resize/autoresize_image.js"></script>
</head>
<body>
	<s:if test="(null != message) && (!message.isEmpty())">
		填写产品信息前，需要先填写企业信息		
	</s:if>
	
    <form  action="pcenter/updateEnterprise" method="post" enctype="multipart/form-data"> 
       	 <h3 id="pcenter_title" align="center">管理企业信息</h3>
       	 
       	<!-- 企业名称 -->
       	<p>
       	 	<span id="ename" class="common_error error_postion"> 
        		<s:fielderror fieldName="name"/>
        	</span>
        </p>
        <p>
        	<label class="form_label">企业名称</label>
        	<INPUT id="name" name="name" class="form_input" type="text" 
            		value='<s:property  value="enterprise.name" />'/>
        </p>
        
        <p>
       		<label class="form_label">所在地</label>
        	<%-- 省市级联 -- 布局通过.province_city控制  --%>
        	<%@ include file="../js/province_city_select/province_city_select.jsp" %>
        	
        	<input type="hidden" value="<s:property value="enterprise.province"/>" id="hiddenprovince" />
        	<input type="hidden" value="<s:property value="enterprise.city"/>" id="hiddencity" />
        	<input type="hidden" value="<s:property value="enterprise.county"/>" id="hiddencounty" />
		</p>
			
		<!-- 详细地址 -->
		<p>
			<span id="eaddress" class="common_error error_postion"> 
       			<s:fielderror fieldName="address"/>
       		</span>
       	</p>
       	<p>
       		<label class="form_label">详细地址</label>
       		<input id="address" name="address" class="form_input" 
       				type="text" value='<s:property value="enterprise.address"/>'>
       		
       	</p>

		<!-- 规模 -->
		<p>
       		<span id="escale" class="common_error error_postion">
       			<s:fielderror fieldName="scale"/>
       		</span>
       	</p>
		<p>
       		<label class="form_label"> 规模 </label>
       		<input id="scale"   name="scale" class="form_input"
       				type="text" value='<s:property value="enterprise.scale"/>'>
       	</p>
        
        <!-- 联系姓名 -->
        <p>
       		<span id="econtacter" class="common_error error_postion"> 
       			<s:fielderror fieldName="contacter"/> 
       		</span>
       	</p>
       	<p>
       		<label class="form_label">联系姓名</label>
       		<input id="contacter" name="contacter" class="form_input"  
       				type="text" value='<s:property value="phone.contacter"/>'>
       	</p>
       
       <!-- 联系电话 -->
		<p>
			<span id="enumber" class="common_error error_postion"> 
        		<s:fielderror fieldName="number"/> 
        	</span>
		</p>
		<p>
        	<label class="form_label">联系电话</label>
        	<input id="number" name="number" class="form_input"   
        			type="text" value='<s:property value="phone.number"/>'>
        </p>
        
        <!-- 企业简介 -->
        <p>
        	<span id="eintroduction" class="common_error error_postion"> 
        		<s:fielderror fieldName="introduction"/> 
        	</span>
        </p>
        <p>
        	<label class="form_label">企业简介</label>
        	<TEXTAREA id="introduction" name="introduction" class="form_textarea"><s:property value="enterprise.introduction"/></TEXTAREA>
        </p>
        
         <%--上传多张图片开始--%>
         <p>
         	<label class="form_label">封面</label>
 	    	<img id="logo"  src="<s:property value='enterprise.logo'/>"/>
         </p>
		<p>         
	        <label class="form_label">上传照片</label>
	        <INPUT id=u198  type="file" name="file" value="浏览"  
	            onchange="deal_new_picture('enterpriseId','pcenter/saveEnterprisePicture',
	            'pcenter/pubEnterprisePicture','pcenter/deleteEnterprisePicture','logo',this)" />
	        <input id="fileId" name="id" type="hidden" value="-1"/>
	        <input id="enterpriseId" name="enterpriseId" type="hidden" value="<s:property value='enterpriseId'/>"/>
	        <span style="font-size:10px;">最多可传5张图片</span>
        </p>
 
	         <div id="thumb" class="thumb" >
	         	
	                <ul  id="thumb_list">
	                    <%--此处由javascript控制动态显示图片缩略图--%>		
	                </ul>
	        </div>
			  <s:iterator value="enterprisePictureMap" id="id" status="st">
				  <script type="text/javascript" >
				      deal_return_picture("<s:property value='key'/>","<s:property value='value.path'/>","enterpriseId",'pcenter/pubEnterprisePicture','pcenter/deleteEnterprisePicture','logo');
				  </script>
			  </s:iterator>		
        <%--上传多张图片结束--%>
        
        <div id="bottom_button_div">
        	<INPUT id="submit" type="submit" value="提交" />
        	<INPUT id="cannel" type="reset" value="取消" onclick="deal_new_picture()" />
		</div>
    </form>
</body>
</html>