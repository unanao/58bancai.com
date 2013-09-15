<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    <link rel="stylesheet" type="text/css" href="css_files/personal.css" />
	<link rel="stylesheet" type="text/css" href="css_files/form.css?=v1.0" />
	<script type="text/javascript" src="js/jquery/jquery.js"></script>
	<script type="text/javascript" src="js/product_select/product_category.js"></script>
	<script type="text/javascript" src="js/product_select/product_select.js?v=1.9"></script>
	<script type="text/javascript" src="js/pcenter/modify_product_validation.js?v=1.0"></script>
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
    <script type="text/javascript" src="js/local_preview.js?v=1.4"></script> 
	<script type="text/javascript" src='js/image_auto_resize/autoresize_image.js'></script>
	<h3 align="center">产品信息</h3>
	<s:fielderror> <s:param> productId </s:param> </s:fielderror> 
	<!-- 输出系统的Action Error提示 -->
	<p>	   
	   <div class="common_error"> <s:actionerror /> </div>
	</p>
	<p>
	<span id="ename" class="common_error" style="position:relative; left:20%"> 
		<s:fielderror> <s:param> name </s:param> </s:fielderror> 
	</span>
	</p>
	<p>
		<label class="form_label">产品名称</label>
       	<input id="name" name="name" class="form_input" type="text" 
       			value='<s:property value="product.name"/>' />
	</p>
	
	<p>
          <span id="ecategory" class="common_error" style="position:relative; left:20%"> 
              <s:fielderror> <s:param> category </s:param> </s:fielderror> 
          </span>
    </p>
        <input id="hiddencategory" name="hiddencategory" class="form_input" type="hidden" 
                value='<s:property value="product.category"/>' />
        <input id="hiddendetail" name="hiddendetail" class="form_input" type="hidden" 
                value='<s:property value="product.detail"/>' />
	<p>
       	<label class="form_label">类别</label>
       	  <select id="category" name="category"></select>
           <select id="detail" name="detail"></select>
       </p>
              
        <p>
       		<span id="eintroduction" class="common_error" style="position:relative; left:20%"> 
				<s:fielderror> <s:param> introduction </s:param> </s:fielderror> 
			</span>
		</p>
		<p>
           <label class="form_label">描述</label>
           <textarea id="introduction" class="form_textarea" name="introduction"><s:property value='product.introduction'/></textarea>
		</p>
	

         <%--上传多张图片开始--%>
         <p>
         	<label class="form_label">封面</label>
			     <img id="icon" src="<s:property value='product.icon'/>"/>
         </p>

		<p>         
	        <label class="form_label">上传照片</label>
	        <INPUT id=u198  type="file" name="file" value="浏览"   onchange="deal_new_picture('productId','pcenter/saveProductPicture',
	            'pcenter/pubProductPicture','pcenter/deleteProductPicture','icon',this)" /> 
	        <input id="fileId" name="id" type="hidden" value="-1"/>
	        <input id="enterpriseId" name="enterpriseId" type="hidden" value="<s:property value='enterpriseId'/>"/>
			<input id="productId" name="productId" type="hidden"	value="<s:property value='productId'/>"/> 

	        <span style="font-size:10px;">最多可传5张图片</span>
        </p>
        
	         <div id="thumb" class="thumb" >
	                <ul  id="thumb_list">
	                    <%--此处由javascript控制动态显示图片缩略图--%>		
	                </ul>
	        </div>
			  <s:iterator value="productPictureMap" id="id" status="st">
            <script type="text/javascript" >
                deal_return_picture("<s:property value='key'/>","<s:property value='value.path'/>","productId",'pcenter/pubProductPicture','pcenter/deleteProductPicture','icon');
            </script>
           </s:iterator>		
        <%--上传多张图片结束--%>       
        <div id="bottom_button_div">
        	<INPUT id="submit" type="submit" value="提交" />
        	<INPUT id="cannel" type="reset" value="取消" onclick="deal_new_picture()" />
		</div>