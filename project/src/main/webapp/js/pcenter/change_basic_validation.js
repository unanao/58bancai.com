$(function() {
	var nickName = true;
	var name = true;
	var officePhone = true;
	var mobile = true;
	var qq = true;
	
	function checkNickName() 
	{
		if ($("#nickName").val() == "") 
		{
			nickName = true;
			return;
		}
		
		if (/^.{2,32}$/.exec($("#nickName").val())) 
		{
			$("#enickName").html("");
			nickName = true;
		} 
		else 
		{
			$("#enickName").html("昵称长度为2 到 20个字符!");
			nickName = false;
		}
	}
	
	function checkName() 
	{
		if ($("#name").val() == "") 
		{
			name = true;
			return;
		}
		
		if (/^.{2,32}$/.exec($("#name").val())) 
		{
			$("#ename").html("");
			name = true;
		} 
		else 
		{
			$("#ename").html("昵称长度为2 到 20个字符!");
			name = false;
		}
	}
	
	function checkOfficePhone() 
	{
		var phone = $("#officePhone").val();
			
		if (phone == "") 
		{
			officePhone = true;
			return;
		}
		
		var tel = /[0-9]{3,4}-[0-9]{5,8}/;
		if(phone.replace(/\s/g,"")!="" && !(tel.exec(phone))) 
		{
			$("#eofficePhone").html("区号-座机号码");
		    officePhone =  false;
		}
		else
		{
			$("#eofficePhone").html("");
			officePhone = true;
		}
	}
	
	function checkMobile() 
	{
		var phone = $("#mobile").val();
			
		if (phone == "") 
		{
			mobile = true;
			return;
		}
		
		var tel = /[0-9]{4,14}/;
		if(phone.replace(/\s/g,"")!="" && !(tel.exec(phone))) 
		{
			$("#emobile").html("手机号码：11位手机号码");
		    mobile =  false;
		}
		else
		{
			$("#emobile").html("");
			mobile = true;
		}
	}
	
	function checkQQ()
	{
		var qq = $("#qq").val();
		if (qq == "") 
		{
			qq = true;
			return;
		}
		
		var patern=/^[1-9][0-9]{4,}$/;
		if(patern.exec(qq))
		{
			$("#eqq").html("");
		    qq = true;
		}
		else
		{
			$("#eqq").html("qq号码错误");
			qq = false;
		}
	}
	
	$("#nameName").blur(checkNickName);
	$("#name").blur(checkName);
	$("#officePhone").blur(checkOfficePhone);
	$("#mobile").blur(checkMobile);
	$("#qq").blur(checkQQ);
	
	$("#submit").click(function() {
		checkNickName();
		checkName();
		checkOfficePhone();
		checkMobile();
		checkQQ();
		
		return nickName && name && officePhone && mobile && qq;
	});
});