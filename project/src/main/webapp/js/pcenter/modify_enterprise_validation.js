$(function() {
	var name = false;
	var address = false;
	var scale = false;
	var contacter = false;
	var number = false;
	var introduction = false;
	
	function checkName() 
	{
		var value = $("#name").val();
		
		if ((0 != value.length) && ("" != value) && (/^.{2,32}$/.exec(value))) 
		{
			$("#ename").html("");
			name = true;
		} 
		else 
		{
			$("#ename").html("公司名称长度为2 到 32个字符!");
			name = false;
		}
	}
	
	function checkAddress() 
	{
		var value = $("#address").val();
		
		if (("" != value) && (/^.{2,32}$/.exec(value))) 
		{
			$("#eaddress").html("");
			address = true;
		} 
		else 
		{
			$("#eaddress").html("详细地址不能为空，长度为1 到 32个字符!");
			address = false;
		}
	}
	
	function checkScale()
	{
		var value = $("#scale").val();
		
		if ((value == "") || (0 == value.length)) 
		{
			$("#escale").html("公司规模不能为空");
			scale = false;
			return;
		}
		
		var reg =  /^[1-9][0-9]{1,}$/;
		if(value.replace(/\s/g,"")!="" && !(reg.exec(value))) 
		{
			$("#escale").html("规模为公司员工数，必须为数字");
			scale =  false;
		}
		else
		{
			$("#escale").html("");
			scale = true;
		}
	}
	
	function checkContacter()
	{
		var value = $("#contacter").val();
		
		if ((0 != value.length) && ("" != value) && (/^.{2,32}$/.exec(value))) 
		{
			$("#econtacter").html("");
			contacter = true;
		} 
		else 
		{
			$("#econtacter").html("联系人的长度为2 到 32个字符!");
			contacter = false;
		}
	}
	
	function checkNumber() 
	{
		var value = $("#number").val();
			
		if ((value == "") || (0 == value.length)) 
		{
			$("#enumber").html("联系电话不能为空");
			number = false;
			return;
		}
		
		var tel = /[0-9]{4,14}/;
		if((value.replace(/\s/g,"")!="") && !(tel.exec(value))) 
		{
			$("#enumber").html("请输入正确的电话号码");
			number =  false;
		}
		else
		{
			$("#enumber").html("");
			number = true;
		}
	}
	
	function checkIntroduction()
	{
		var value = $("#introduction").val();
		
		if (("" == value) || (0 == value.length))
		{
			$("#eintroduction").html("简介不能为空");
			introduction = false;
		}
		else if (value.length > 255)
		{
			$("#eintroduction").html("简介长度需要小于255个字符");
			introduction = false;
		}
		else
		{
			$("#eintroduction").html("");
			introduction = true;
		}
	}
	
	$("#name").blur(checkName);
	$("#address").blur(checkAddress);
	$("#scale").blur(checkScale);
	$("#contacter").blur(checkContacter);
	$("#number").blur(checkNumber);
	$("#introduction").blur(checkIntroduction);
	
	$("#submit").click(function() {
		checkName();
		checkAddress();
		checkScale();
		checkContacter();
		checkNumber();
		checkIntroduction();
		
		return name && contacter && number && scale && introduction && address;
	});
});