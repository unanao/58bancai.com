﻿<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<base
	href="<%=request.getScheme() + "://" + request.getServerName()
					+ ":" + request.getServerPort() + request.getContextPath()%>/" />

<form>
	<div>
		<div>

			<!-- 输出系统的Action Error提示 -->
			<p>
				<s:actionerror />
			</p>

			<!-- 昵称 -->
			<p>
				<label class="form_label"> 昵称 </label> 
				<INPUT id="nickName" name="nickName" class="form_input" type="text"> 
				<span
					id="enickName" class="common_error"> <s:fielderror>
						<s:param> nickName </s:param>
					</s:fielderror>
				</span>
			</p>

			<!-- 姓名 -->
			<p>
				<label class="form_label"> 姓名 </label> 
				<INPUT id="name" name="name" class="form_input" type="text"> 
				<span id="ename" class="common_error">
					<s:fielderror>
						<s:param> name </s:param>
					</s:fielderror>
				</span>
			</p>

			<!-- 性别 ： 单选框  -->
			<p>
				<span class="form_label"> 性别 </span>

				<INPUT id="male" type=radio value="male" name="gender">男
				<INPUT id="female" type="radio" value="female" name="gender">女
				<INPUT id="secret" type="radio" value="secret" name="gender" checked="true"> 保密
			</p>

			<!-- 办公电话 -->
			<p>
				<label class="form_label"> 固话 </label> 
				<INPUT id="officePhone" name="officePhone" class="form_input" type="text"> 
				<span
					id="eofficePhone" class="common_error"> <s:fielderror>
						<s:param> officePhone </s:param>
					</s:fielderror>
				</span>
			</p>

			<p>
				<label class="form_label"> 手机 </label> 
				<INPUT id="mobile" name="mobile" class="form_input" type="text"> 
				<span
					id="emobile" class="common_error"> <s:fielderror>
						<s:param> mobile </s:param>
					</s:fielderror>
				</span>
			</p>

			<p>
				<label class="form_label"> QQ</label> 
				<INPUT id="qq" name="qq" class="form_input" type="text"> 
				<span id="eqq"
					class="common_error"> <s:fielderror>
						<s:param> qq </s:param>
					</s:fielderror>
				</span>
			</p>

			<p>
				 <span class="save_ok"  id="save_ok_msg" > 资料修改成功!</span>
				<input id="submit" type="button" class="btn" value="确定" onclick="setBasicInfo()" /> 
				<input id="cancel" type="reset" class="btn" value="取消" />
			</p>
			
		</div>
	</div>
</form>

<script type="text/javascript" src="js/pcenter/basic_info.js"></script>


